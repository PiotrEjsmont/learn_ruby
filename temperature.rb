class Temperature
	def self.from_celsius celsius
		new(:c => celsius)
	end
	def self.from_fahrenheit fahrenheit
		new(:f => fahrenheit)
	end
	def initialize options
		@fahrenheit = options[:f] || options[:c] * 9.0/5.0 + 32
		@celsius = options[:c] || (options[:f] - 32) * 5.0/9.0
	end
	def in_fahrenheit
		@fahrenheit
	end
	def in_celsius
		@celsius
	end
end
class Celsius < Temperature
	def initialize(c)
		super(:c => c)
	end
end
class Fahrenheit < Temperature
	def initialize(f)
		super(:f => f)
	end
end
