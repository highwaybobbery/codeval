file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    puts line.match(/\w+/).to_s.to_i(16)
  end
end
file.close
