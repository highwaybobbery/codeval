file_name = ARGV.first
lines_to_return = nil
lines = []
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    line = line.downcase
    line = line.gsub(/^a-z/,'')
    line = line.split(//).uniq
    missing = ('a'..'z').to_a.reject{ |c| line.include? c }

    if missing.any?
      puts missing.join()
    else
      puts 'NULL'
    end
  end
end
file.close

