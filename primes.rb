file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    a, b = line.split(';')
    puts(longest_match(a,b))
  end
end
file.close
