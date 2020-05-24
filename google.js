function onFormSubmit(e) {
  var sheet = SpreadsheetApp.getActiveSheet();
  var row =  sheet.getLastRow();
  var receiptId = row - 1;
  var receipt = generateReceipt(receiptId);
  sheet.getRange(row,7).setValue(receipt);

  var user = {
    receipt: receipt,
    name: e.namedValues['布施者姓名 | Donor Name'][0],
    phoneNo: e.namedValues['联络号码 | Contact number'][0],
    amount: e.namedValues["随缘布施 | Freewill contribution"][0]
  };

  var newId = generateTicketTemplate(user);
  var file = createTicket(newId, receipt);

  var url = generateWhatsappUrl(file.getId(), user.phoneNo)
  sheet.getRange(row,8).setValue(url);
}

function generateReceipt(receiptId) {
  let receipt = receiptId.toString();
  while (receipt.length < 4) {
    receipt = "0" + receipt;
  }

  receipt = "20FW" + receipt

  return receipt;
}

function duplicateFile(id) {
  var file = DriveApp.getFileById(id);
  var duplicated = file.makeCopy();
  return duplicated;
}

function generateTicketTemplate(user) {
  var presentationId = "18W0VyW6FZZzS1spJ8Ly_a9Qo_Az-nMc8Ka3NiM2N3mc";
  var duplicated = duplicateFile(presentationId);
  var duplicatedId = duplicated.getId();

  var resource = {
    "requests": [
       {
         "replaceAllText": {
           "containsText": {
             "text": "{{$}}"
           },
           "replaceText": user.amount
         }
       },
       {
         "replaceAllText": {
           "containsText": {
             "text": "{{name}}"
           },
           "replaceText": user.name
         }
       },
       {
         "replaceAllText": {
           "containsText": {
             "text": "{{receipt_no}}"
           },
           "replaceText": user.receipt
         }
       }
     ]
  };
  Slides.Presentations.batchUpdate(resource, duplicatedId);
  return duplicatedId;
}

function createTicket(presentationId, receipt) {
  var options = {
    "contentType" : "application/pdf"
  };
  var url = 'https://docs.google.com/presentation/d/' + presentationId + '/export/pdf';
  var response = UrlFetchApp.fetch(url, options);
  var pdfAsblob = response.getBlob();

  var dir = DriveApp.getFolderById("1etazkpFhp9oV8jvA9i0epbWAMaUXAuhG");
  file = dir.createFile(pdfAsblob);
  file.setName("Eticket_" + getToday() + "_" + receipt);

  return file
}


function getToday() {
  var today = new Date();
  var dd = String(today.getDate()).padStart(2, '0');
  var mm = String(today.getMonth() + 1).padStart(2, '0');
  var yyyy = today.getFullYear();

  return today = dd + '-' + mm + '-' + yyyy;
}

function generateWhatsappUrl(docId, phoneNumber) {
	let link = "https://drive.google.com/uc?export=download&id=" + docId;
  let contents = `
    Greetings,
    您好，

    Please find your enclosed eCoupon for Candle Offering in conjunction with Wesak Day.
    请查收您卫塞节点灯的电子固本。

    🌈 May the epidemic end soon and may your family members and you be well, happy and peaceful. Also, may this merit brings you brightness and drives the darkness away.
    🌈祈愿疫情早日平復，祝愿您与家人平安、快乐祥和。也希望此功德为您带来光明，照亮及驱除黑暗。

    Happy Wesak Day 🌻
    卫塞节快乐 🌻

    Sādhu! Sādhu! Sādhu! 🙏🏻
    萨度! 萨度! 萨度! 🙏🏻

    Download your receipts here:
    下载您的电子固本:
  `

  let text = contents + link;

	let url = "https://api.whatsapp.com/send?phone=" + phoneNumber + "&text=" + encodeURIComponent(text);
  return url;
}
