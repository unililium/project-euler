#!/usr/bin/env julia

function numdivisors(n)
	result = 0
	z = floor(sqrt(n))
	for i = 1:z
		if n % i == 0
			result += 2
		end
	end
	if n == z ^ 2
		result -= 1
	end
	return result
end

i = tn = 1
while numdivisors(tn) < 500
	tn += i + 1
	i += 1
	println(tn)
end
println("^Solution^")
