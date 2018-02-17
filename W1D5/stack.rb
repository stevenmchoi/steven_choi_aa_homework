class Stack
  def initialize
    @stack_struct = []
  end

  def add(el)
    @stack_struct << el
  end

  def remove
    @stack_struct.pop
  end

  def show
    p @stack_struct
  end
end
