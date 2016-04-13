class Dictionary
	attr_accessor :d
	def initialize
		@d = {}
	end
	def entries
		@d
	end
	def add(entry) 
		entry.is_a?(Hash) ? @d.merge!(entry) : @d[entry] = nil
	end
	def keywords
		sorted = d.sort.to_h
		sorted.keys
	end
	def include?(x)
		if @d.include?(x)
			true
		else
			false
		end
	end
	def find(x)
		finder = {}
		@d.each do |key, value|
			if key.to_s =~ /#{x}/
				finder[key] = value
			end
		end
		finder
	end
	def printable
		print = []
		@d.each do |key, value|
			print.push(%Q{[#{key}] \"#{value}\"})
		end
		print.sort.join("\n")
	end
end
