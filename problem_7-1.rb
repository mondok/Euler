# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
# => 104743

require 'prime'

g = Prime::EratosthenesGenerator.new
p = 0
10_001.times{ |i| p = g.next }
puts p
