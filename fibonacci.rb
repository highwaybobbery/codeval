def fib(n)
  if n < 2
    n
  else
    fib(n-1) + fib(n-2)
  end
end

file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    n = line.to_i
    puts fib(n)
  end
end
file.close

