def can_construct(ransom_note, magazine)
  arr = magazine.split("")

  ransom_note.each_char do |char|
    idx = arr.index(char)
    return false unless idx

    arr.delete_at(idx)
  end

  true
end
def can_construct(ransom_note, magazine)
  ransom_note.each_char do |char|
    idx = magazine.index(char)
    return false unless idx

    magazine.slice!(idx)
  end

  true
end
