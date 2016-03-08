def factorial(num)
	factor = num
	# factor is 4
	sum = num
	# sum = 4
	if (num != 0)
		while factor != 1	
			sum = sum * (factor-1)
			factor -= 1
		end
	end
	puts ("called the function with #{num}")
	puts ("result is #{sum}")
end

factorial(1)
factorial(0)
factorial(4)
