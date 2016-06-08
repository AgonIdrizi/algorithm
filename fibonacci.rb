def fibs(num)
	fib_arr = [0,1]
	return fib_arr if num <= fib_arr.length
	num1 = 0
	num2 = 1
	while fib_arr.length < num
		num3 = num1 + num2
		fib_arr << num3
		num1 = num2
		num2 = num3
	end
	fib_arr
end

