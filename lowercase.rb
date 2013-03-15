file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    puts line.downcase
  end
end
file.close
