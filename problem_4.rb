# http://projecteuler.net/problem=4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

max = 999
min = 100 

@answer = 0

def calculate(num1, num2)
  val = num1 * num2
  val.to_s.reverse == val.to_s ? val : 0
end

def iterate(max, min)
  (min..max).each do |x|
    (min..max).each do |y|
      pal_ans = calculate(x, y)  
      @answer = pal_ans if pal_ans > @answer
    end
  end
end

val = iterate(max, min)
puts "#{@answer}"





