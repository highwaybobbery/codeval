def greater_multiple(floor, multiplier)
  x = multiplier
  while x < floor
    x += multiplier
  end
  x
end

file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    floor, multiplier = line.split(',').map(&:to_i)
    puts greater_multiple(floor, multiplier)
  end
end
file.close
