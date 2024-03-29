# http://projecteuler.net/problem=2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

limit = 4000000
next_term = 2
last_term = 1
sum = 0
while(next_term <= limit)
  sum += next_term if next_term % 2 == 0
  placeholder = next_term
  next_term = next_term + last_term
  last_term = placeholder
end

puts sum

