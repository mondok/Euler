# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# => 906609

ub = 999
lb = 100

l = 0
ub.downto(lb) do |a|
  ub.downto(lb) do |b|
    p = (a * b)
    l = p if p > l && p.to_s == p.to_s.reverse
  end
end

puts "Largest: %d" % l