class Queue
  def initialize
    @queue_struct = []
  end

  def enqueue(el)
    @queue_struct << el
  end

  def dequeue
    @queue_struct.shift
  end

  def show
    p @queue_struct
  end
end
