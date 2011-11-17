# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a2 + b2 = c2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# => 200 375 425 = 1000 = 31875000

m = 1000
found = []

catch :found do
  (1..m).each do |a|
    (a+1..m).each do |b|
      a2,b2 = a**2,b**2
      c = Math.sqrt(a2+b2).to_i
      next unless c**2 == a2 + b2
      
      puts "#{a} + #{b} + #{c} = #{a+b+c}" if $DEBUG
      if a+b+c == 1000
        found = [a,b,c]
        throw :found
      end
    end
  end
end

if found
  puts "\nFound: #{found.inspect}"
  p = found.inject(1){ |t,n| t * n }
  puts "Product: #{p}"
end
