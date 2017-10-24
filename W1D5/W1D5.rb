Class Stack

  def initialize
    @stack = []
  end

  def add(new_stack)
    @stack << new_stack
    new_stack
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end

end

Class Queue

  def initialize
    @queque = []
  end

  def enqueque(new_que)
    @queue << new_que
    new_que
  end

  def dequeque
    @queque.shift
  end

  def show
    @queue.dup
  end
end

Class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    idx = @map.index { |el| el[0] == key }
    idx ? @map[idx][1] = value : @map.push([key, pair])
    [key, value]
  end

  def lookup(key)
    @map.each { |el| return el[1] if el[0] == key }
    nil
  end

  def remove(key)
    @map.reject! { |el| el[0] == key }
    nil
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
