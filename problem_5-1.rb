# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# => 232792560

range = (1..20)
incr = range.end

n = 0
found = false

until found
  n += incr
  found = range.all?{ |i| n % i == 0 }
end

puts n
