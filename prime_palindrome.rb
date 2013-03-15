require 'prime'
highest_palindrome = false
Prime.each(1000) do |prime|
  s = prime.to_s
  if s == s.reverse
    highest_palindrome = prime
  end
end
puts highest_palindrome
