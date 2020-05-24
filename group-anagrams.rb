# ["eat", "tea", "tan", "ate", "nat", "bat"]
def group_anagrams(strs)
  dict = {}
  strs.map { |word| word.chars.sort.join("") }.each_with_index do |word, idx|
    dict[word] ||= []
    dict[word] << idx
  end

  dict.values.each do |word_arr|
    word_arr.map! { |idx| strs[idx] }
  end
end

def group_anagrams(strs)
  dict = {}
  strs.each do |str|
    sorted = str.chars.sort.join
    dict[sorted] ||= []
    dict[sorted] << str
  end

  dict.values
end
