# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def bigPrime(big, little = 2)
	while((little < big) && (big % little != 0))
		little += 1
	end
	if little == big
		return big
	else
		return bigPrime(big/little, little)
	end
end

puts bigPrime(600851475143)