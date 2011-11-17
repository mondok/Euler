# http://projecteuler.net/problem=3
# 
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143?

ceiling = 600851475143

prime = 0

sqr = Math.sqrt(ceiling)
last_num = nil

2.upto(sqr) do |i|
  if sqr%i== 0
    last_num = i 
  end
end

puts last_num