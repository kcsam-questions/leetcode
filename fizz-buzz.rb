def fizz_buzz(n)
  ans = []
  (1..n).each do |num|
    ans << if num % 3 == 0 && num % 5 == 0
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num.to_s
    end
  end
  ans
end

def fizz_buzz(n)
  hash = {
    3 => "Fizz",
    5 => "Buzz"
  }

  ans = []
  (1..n).each do |val|
    elem = ""
    hash.keys.each do |key|
      elem += hash[key] if val % key == 0
    end
    elem = val.to_s if elem.length == 0
    ans << elem
  end

  ans
end
