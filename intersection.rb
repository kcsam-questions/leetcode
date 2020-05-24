def intersection(nums1, nums2)
  intersection = []
  hash = nums1.sort!.chunk_while { |x,y| x == y }.to_a.map { |arr| [arr[0], arr.count] }.to_h
  nums2.sort!.each do |num|
    next if hash[num].nil? || hash[num] == 0
    intersection << num
    hash[num] -= 1
  end
  intersection
end

def intersection(nums1, nums2)
  nums1.sort!
  nums2.sort!

  shorter = nums1.length <= nums2.length ? nums1 : nums2
  longer = nums1.length > nums2.length ? nums1 : nums2
  intersection = []

  shorter.each do |num1|
    (0..longer.length-1).each do |i|
      next if num1 > longer[i]
      if num1 == longer[i]
        intersection << num1
        longer.delete_at(i)
      end
      break
    end
  end
  intersection
end
