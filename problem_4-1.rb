# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# => 906609

range = (100..999)

l = 0
range.each do |a|
  range.each do |b|
    p = (a * b)
    l = p if p > l && p.to_s == p.to_s.reverse
  end
end

puts "Largest: %d" % l