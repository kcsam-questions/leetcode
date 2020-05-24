class MinStack
  def initialize()
    @array = []
  end

  def push(x)
    @array.push(x)
  end

  def pop()
    @array.pop
  end

  def top()
    @array[-1]
  end

  def get_min()
    @array.min
  end
end
