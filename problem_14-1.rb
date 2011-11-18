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

max = [0,0]
ceiling = 999_999

$cache = {1 => 1}

# generate and cache the start number + chain size
def chain(n)
  return $cache[n] if $cache.has_key?(n)
  
  if (n&1).zero?
    $cache[n] = 1 + chain(n/2)
  else
    $cache[n] = 1 + chain(n+(n<<1)+1)
  end 
  
  $cache[n]
end

# generate our cache hash
1.upto(ceiling){ |n| chain(n) }

# find the largest chain
$cache.each do |k,v|
  max = [k,v] if v > max[1]
end

# output result
puts max.inspect