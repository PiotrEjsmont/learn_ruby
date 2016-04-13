class RPNCalculator
	attr_accessor :expression
	def initialize
		@expression = []
	end
	def check
		@sign = []
		@num = []
		@expression.each do |x|
			if x.is_a? Integer
				@num.push(x)
			else
				@sign.push(x)
			end
		end
		@num.size <=> @sign.size
	end
	def raise_error
		raise "calculator is empty"
	end
	def tokens(x)
		y = []
		y = x.split
		y.map! do |n|
			if n == "+" || n == "-" || n == "*" || n == "/"
				n = n.to_sym
			else
				n = n.to_i
			end
		end
		y
	end
	def evaluate(x)
		@expression = tokens(x)
		value
	end
	def push(x)
		@expression.push(x)
	end
	def plus
		if check == 1
			@expression.push(:+)
		else
			raise_error
		end
	end
	def minus
		if check == 1
			@expression.push(:-)
		else
			raise_error
		end
	end
	def times
		if check == 1
			@expression.push(:*)
		else
			raise_error
		end
	end
	def divide
		if check == 1
			@expression.push(:/)
		else
			raise_error
		end
	end
	def value
		@stack = []
		@expression.each do |x|
			value = 0
			if x.is_a? Integer
				@stack.push(x)
			elsif x == :+
				value = @stack[@stack.size-2] + @stack[@stack.size-1]
				@stack.pop(2)
				@stack.push(value)
			elsif x == :-
				value = @stack[@stack.size-2] - @stack[@stack.size-1]
				@stack.pop(2)
				@stack.push(value)
			elsif x == :*
				value = @stack[@stack.size-2].to_f * @stack[@stack.size-1].to_f
				@stack.pop(2)
				@stack.push(value)
			elsif x == :/
				value = @stack[@stack.size-2].to_f / @stack[@stack.size-1].to_f
				@stack.pop(2)
				@stack.push(value)
			end
		end
		@stack[@stack.size-1]
	end
end