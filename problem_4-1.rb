# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# => 906609

range = (100..999)

l = 0
range.each do |a|
  range.each do |b|
    p = (a * b).to_s
    l = p.to_i if p.to_i > l && p == p.reverse
  end
end

puts "Largest: %d" % l