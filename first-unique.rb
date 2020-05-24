class FirstUnique

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
      @dict = {}
      nums.each do |i|
        if @dict[i]
          @dict[i] += 1
        else
          @dict[i] = 1
        end
      end
    end


=begin
    :rtype: Integer
=end
    def show_first_unique()
      @dict.key(1) || -1
    end


=begin
    :type value: Integer
    :rtype: Void
=end
    def add(i)
      if @dict[i]
        @dict[i] += 1
      else
        @dict[i] = 1
      end
    end


end

# Your FirstUnique object will be instantiated and called as such:
# obj = FirstUnique.new(nums)
# param_1 = obj.show_first_unique()
# obj.add(value)
