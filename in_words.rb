module Inwords
	def in_words
		num = self
		ones = %w(one two three four five six seven eight nine)
		teens = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
		tens = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
		numstring = ""
		write = num/1000000000000
		remainder = num - write*1000000000000
		if write > 0
			trillions = write.in_words
			numstring += trillions + " trillion"
			if remainder > 0
				numstring += " "
			end
		end
		write = remainder/1000000000
		remainder = remainder - write*1000000000
		if write > 0
			billions = write.in_words
			numstring += billions + " billion"
			if remainder > 0
				numstring += " "
			end
		end
		write = remainder/1000000
		remainder =remainder - write*1000000
		if write > 0
			millions = write.in_words
			numstring += millions + " million"
			if remainder > 0
				numstring += " "
			end
		end
		write = remainder/1000
		remainder = remainder - write*1000
		if write > 0
			thousands = write.in_words
			numstring += thousands + " thousand"
			if remainder > 0
				numstring += " "
			end
		end
		write = remainder/100
		remainder = remainder - write*100
		if write > 0
    		hundreds  = write.in_words
   			numstring = numstring + hundreds + " hundred"
   			if remainder > 0
   				numstring += " "
   			end
   		end
   		write = remainder/10
   		remainder = remainder - write*10
   		if write > 0
   			if ((write == 1) and (remainder > 0))
   				numstring = numstring + teens[remainder-1]
   				remainder = 0
   			else
   				numstring = numstring + tens[write-1]
   			end
   			if remainder > 0 
   				numstring += " "
   			end
   		end
   		write = remainder
   		remainder = 0
   		if write > 0
   			numstring = numstring + ones[write-1]
   		end
   		if num == 0
   			"zero"
   		else
   			numstring
   		end
   	end
end
class Fixnum
	include Inwords
end
class Bignum
	include Inwords
end

