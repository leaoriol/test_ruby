# 02 rspec test
def add(*numbers)
	numbers.inject(0) { |sum, num| sum + num}
end

def sum(array)
	array.inject(0) {|sum,x| sum + x.to_i }
end

def multiply(*numbers)
	numbers.inject(1) { |total, num| total * num}
end

def subtract(*numbers)
	sum = numbers.shift
	numbers.inject(sum) {|sum, num| sum - num}
end

def power(num1, num2)
	sum = num1 ** num2
end

#def factorial(num)
	#factor = num
	#sum = num
	#while factor != 1
		#sum = sum * (num-1)
		#factor -= 1
	#end
#end

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
    return sum
end