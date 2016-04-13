def add(x,y)
	x + y
end
def subtract(x,y)
	x - y
end
def sum(x)
	total = 0
	x.each do |n|
		total += n
	end
	total
end
def multiply(x,y,*others)
	total = 1
	others.each do |n|
		total *= n
	end
	x * y * total 
end
def power(x,y)
	x ** y
end
def factorial(x)
	if x == 0
		return 1
	else
		total = 1
		while x > 0 do
			total *= x
			x -= 1
		end
		total
	end
end

