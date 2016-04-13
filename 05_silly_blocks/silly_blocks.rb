def reverser
	y = []
	yield.split.each do |word|
	y.push(word.reverse!)
end
y.join(' ')
end
def adder(x=1)
	yield + x
end
def repeater(x=1)
	x.times do
		yield
	end
end