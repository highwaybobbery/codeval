def longest_match(x,y)
  r = x.split(//)
  c = y.split(//)
  col = Array.new(c.length + 1, 0)
  grid =  Array.new(r.length + 1, col)

  i = 0
  r.each do |x|
    i = i + 1
    j = 0
    c.each do |y|
      j = j + 1
      grid[i][j] = (x == y) ? grid[i-1][j-1] + 1 : [grid[i][j-1], grid[i-1][j]].max
    end
  end

  i, j, lcs = r.length-1, c.length-1, ''
  while i + j > 0 do
    if i > 0 && j
      # do something!
    end
    i -= 1
    j -= 1
  end
  grid[r.length][c.length]
end

file_name = ARGV.first
file = File.open(file_name, "r").each_line do |line|
  unless line.match(/^$/)
    x, y = line.strip.split(';')
    puts longest_match(x,y)
  end
end
file.close
