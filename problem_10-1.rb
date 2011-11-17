# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'

m,s,n = 2_000_000,0,0
g = Prime::EratosthenesGenerator.new
s += n until (n = g.next) > m

puts s
