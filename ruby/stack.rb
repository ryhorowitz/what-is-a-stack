class Stack
  attr_reader :limit

  def initialize
    @stack = []
    # this is an arbitrary value to make testing easier
    # 1,024 would be way too high to test!
    @limit = 10
  end

  # add item to top of stack if not full
  # if full, throw error
  def push(item)
    raise 'Stack is full' if isFull?
    stack.push(item)
  end

  # remove item from top of stack and return it
  def pop
    @stack.pop
  end

  # return item at top of stack without removing it
  def peek
    @stack.last
  end

  # return true if stack is empty, otherwise false
  def isEmpty?
    @stack.empty?
  end

  # return true if stack is full, otherwise false
  def isFull?
    @stack.size >= @limit
  end

  # return number of items in stack
  def size
    @stack.size
  end

  # return -1 if item not in stack, otherwise integer representing 
  # how far it is from the top
  def search(target)
    return -1 if @stack.index(target).nil?
    # 0 equals top or index -1
    # find the index of elem
    # subtract the stack size from the index number
    self.size - @stack.index(target) - 1
  end

  # print contents of stack: do not return the stack itself!
  def print
    puts @stack.join(' <- ')
  end
end

if __FILE__ == $PROGRAM_NAME
  # Don't forget to add your tests!
end

