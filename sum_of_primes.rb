require 'prime'
puts Prime.take(1000).inject{|sum,x| sum + x }
