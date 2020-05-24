# --------------------------------------------------
def say(str)
  arr = str.chars.chunk_while { |x, y| x == y }.to_a

  arr.inject("") do |speech, chunk|
    speech + chunk.count.to_s + chunk[0]
  end
end

BASE_CASE = "1"
def count_and_say(n)
  count = 1
  str = BASE_CASE

  while true
    break if count == n
    str = say(str)
    count += 1
  end

  str
end

# --------------- Faster than the above ------------

BASE_CASE = "1"
def count_and_say(n)
  return BASE_CASE if n == 1

  str = BASE_CASE
  (1..n-1).each do |count|
    str = say(str)
  end

  str
end

# --------------------------------------------------

def count_and_say(n)
  return BASE_CASE if n == 1
  str = BASE_CASE

  (1..n-1).each do |count|
    speech = ""
    str.chars.each_with_index do |char, idx|
      if idx == 0 || char != str[idx-1]
        speech += "1#{char}"
      else
        speech[-2] = (speech[-2].to_i + 1).to_s
      end
    end

    str = speech
  end

  str
end

# --------------------------------------------------

# --------- Slowest -------------------------------
def count_and_say(n)
  str = BASE_CASE

  (1..n-1).each do |count|
    sum = 0
    str.chars.each_with_index do |char, idx|
      if idx == 0 || char != str[idx-1]
        sum *= 100 if idx != 0
        sum += 10
        sum += char.to_i
      else
        sum += 10
      end
    end
    str = sum.to_s
  end

  str
end

# --------------------------------------------------
