# Each new term in the Fibonacci sequence is generated by adding 
# the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 
#        1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.


def fib(max=0)
	
	a=0
	b=c=1
	sequence = Array.new

	while (a+b <= max)
		sequence.push(c=a+b)
		a=b
		b=c
	end

	return sequence
end

sum = 0
fib(4000000).each { |n| sum += n if (n%2==0) }
puts "The sum is #{sum}"

# The sum is 4613732