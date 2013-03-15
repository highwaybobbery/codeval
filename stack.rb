class Stack
  def initialize
    @elements = []
  end

  def push(x)
    @elements.push(x)
  end

  def pop
    @elements.pop
  end

  def count
    @elements.length
  end

  def join(delimeter)
    @elements.join(delimeter)
  end
end

file_name = ARGV.first
lines_to_return = nil
lines = []
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    stack = Stack.new()
    line.split(' ').each{ |i| stack.push(i) }
    alternates = Stack.new()
    while stack.count > 0
      alternates.push(stack.pop)
      stack.pop
    end
    puts alternates.join(' ')
  end
end
file.close


