class Array
	def sum
		total = 0
		self.each do |x|
			total += x
		end
		total
	end
	def square
		square = []
		if self.size > 0
			self.each do |x|
				square.push(x*x)
			end
		end
		square
	end
	def square!
		self.map! do |x|
			x*x
		end
	end	
end