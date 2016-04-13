def echo(x)
	x
end
def shout(x)
	x.upcase
end
def repeat(x,y=1)
	if y < 2
		"#{x}" + (' ' + "#{x}")
	else 
		"#{x}" + (' ' + "#{x}") * (y-1)
	end
end
def start_of_word(x,y)
	x[0...y]
end
def first_word(x)
	x.split[0]
end
def titleize(x)
	y = x.split
	y.each do |word|
		word.capitalize! unless word == "and" || word == "over" || word == "the" || word == "on" || word == "in"
	end
	y[0].capitalize!
	y.join(' ')
end
