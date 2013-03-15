file_name = ARGV.first
lines_to_return = nil
lines = []
file = File.open(file_name, "r").each_line do |line|
  if lines_to_return.nil?
    lines_to_return = line.to_i
  else
    unless line.match(/^$/)
      lines << line
    end
  end
end
file.close

lines.sort{|a,b| a.length <=> b.length }.reverse.slice(0, lines_to_return).each{ |l| puts l}

