# The following iterative sequence is defined for the set of positive integers:
# 
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 
# 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 ->4 -> 2 -> 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.
# 
# => [837799, 525]

def generate(n)
  if (n & 1).zero?
    n/2
  else
    (n*3) +1
  end
end

def sequence_size(n)
  s = 1
  begin
    n = generate(n)
    s += 1
  end until n == 1
  s
end

max = [0,0]

999_999.downto(13) do |n|
  s = sequence_size(n)
  puts "#{n}: #{s}" if $DEBUG
  max = [n,s] if s > max[1]
end

puts max.inspect
