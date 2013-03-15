file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  words = line.split(/\W+/)
  unless words.empty?
    puts words.reverse.join(' ')
  end
end
file.close
