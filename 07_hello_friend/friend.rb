class Friend
	def greeting(x=0)
		if x == 0
			"Hello!"
		else
			"Hello, " + "#{x}" + "!"
		end
	end
end
