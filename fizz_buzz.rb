def fizzbuzz(a,b,n)
  round = []
  (1..n).each do |x|
    fizz = (x % a == 0)
    buzz = (x % b == 0)
    if fizz && buzz
      round << 'FB'
    elsif fizz
      round << 'F'
    elsif buzz
      round << 'B'
    else
      round << x
    end
  end
  round
end

file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    a,b,n = line.split(/\W/).map(&:to_i)
    puts fizzbuzz(a,b,n).join(' ')
  end
end
file.close
