# http://projecteuler.net/problem=5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

top = 20
range = (1..20)
numb = top


@answer = nil

while @answer.nil?
  numb = numb + top
  res = range.select{|z| numb % z == 0}
  if res.size == range.count
    @answer = numb
  end
end


puts "#{@answer}"