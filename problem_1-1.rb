# http://projecteuler.net/problem=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
# => 233168

i = sum = 0
sum += i if ((i % 3).zero? || (i % 5).zero?) while((i += 1) < 1_000)
puts "Total: %d" % sum
