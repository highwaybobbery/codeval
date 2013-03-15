file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    if line.match(/^[\w.]+@[\w]+.[a-zA-z]+$/)
      puts 'true'
    else
      puts 'false'
    end
  end
end
file.close

