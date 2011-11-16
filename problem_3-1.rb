# http://projecteuler.net/problem=1
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# => 6857

number = 600_851_475_143

def prime_factors(n)
  return [] if n == 1
  f = (2..n).detect{ |x| (n % x).zero? }
  [f] + prime_factors(n / f)
end

puts "Largest: %d" % prime_factors(number)[-1]