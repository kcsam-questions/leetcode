class LRUCache

=begin
    :type capacity: Integer
=end
    def initialize(capacity)
      @capacity = capacity
      @cache = {}
      @queue = []
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
      val = @cache[key]
      handle_queue(key) if val
      val || -1
    end

    def handle_queue(key)
      @queue.delete(key) if @queue.include?(key)
      if @queue.length >= @capacity
        deleted_key = @queue.pop
        @cache.delete(deleted_key)
      end
      @queue.unshift(key)
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
      @cache[key] = value
      handle_queue(key)
    end
end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)
