# @param {Integer} num
# @return {Integer}
def find_complement(num)
  complement = ""
  num.to_s(2).each_char do |i|
    case i
    when "1"
      complement += "0"
    else
      complement += "1"
    end
  end

  complement.to_i(2)
end
