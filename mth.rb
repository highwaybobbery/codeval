file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    chars = line.split()
    m = chars.pop.to_i
    puts chars[0 - m]
  end
end
file.close

