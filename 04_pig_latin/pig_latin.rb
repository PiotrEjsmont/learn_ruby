def translate(x)
	z = []
	y = x.split
	y.collect do |x|
	if x[0] =~ /[aeiou]/
		z.push("#{x}" + "ay")
	elsif (x[0] !~ /[aeiou]/ && x[1] == "q" && x[2] == "u")
		z.push(("#{x}" + x[0] + x[1] + x[2] + "ay").reverse.chop.chop.chop.reverse)
	elsif (x[0] == "q" && x[1] == "u")
		z.push(("#{x}" + "qu" + "ay").reverse.chop.chop.reverse)
	elsif (x[0] == "s" && x[1] == "c" && x[2] == "h")
		z.push(("#{x}" + "sch" + "ay").reverse.chop.chop.chop.reverse)
	elsif (x[0] !~ /[aeiou]/ && x[1] !~ /[aeiou]/ && x[2] !~ /[aeiou]/)
		z.push(("#{x}" + x[0] + x[1] + x[2] + "ay").reverse.chop.chop.chop.reverse)
	elsif (x[0] !~ /[aeiou]/ && x[1] !~ /[aeiou]/)
		z.push(("#{x}" + x[0] + x[1] + "ay").reverse.chop.chop.reverse)
	else
		z.push(("#{x}" + x[0] + "ay").reverse.chop.reverse)
	end
	end
	z.join(" ")
end


