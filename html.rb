                formElements = `
                <form>
                  <label for="name">Name:</label><br>
                  <input type="text" id="name" name="name"><br>
                  <label for="wish">Wish:</label><br>
                  <textarea type="text" id="wish" name="wish" rows='10' />
                </form>
                `

                $("#form-container").prepend(formElements);
                $("#form-container input").blur(function(){
                  if(this.value && $("#wish").value) {
                    $("light-candle").prop("disabled", false);
                  }
                });

                $("#form-container #wish").blur(function(){
                  if(this.value && $("#wish").value) {
                    $("light-candle").prop("disabled", false);
                  }
                })
