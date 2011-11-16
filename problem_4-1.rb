# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# => 906609

range = (100..999)

pals = []
range.each do |a|
  range.each do |b|
    p = (a * b).to_s
    pals << p.to_i if p == p.reverse
  end
end

puts "Largest: %d" % pals.sort.uniq[-1]