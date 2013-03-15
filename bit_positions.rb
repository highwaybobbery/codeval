def bits_equal(num,a,b)
  bin = num.to_s(2)
  if bin[0-a] == bin[0-b]
    'true'
  else
    'false'
  end
end

file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    num, a, b = line.split(',').map(&:to_i)
    puts bits_equal(num, a, b)
  end
end
file.close

