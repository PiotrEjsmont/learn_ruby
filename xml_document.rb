class XmlDocument
	def initialize(indent = false)
		@indent = indent
		@nesting = 0
	end
	def method_missing(x, *args, &block)
		attributes = args[0] || {}
		string = ""
		string << ("  " * @nesting) if @indent
		string << "<#{x}"
		attributes.each_pair do |key, value|
			string << " #{key}='#{value}'"
		end
		if block
			string << ">"
			string << "\n" if @indent
			@nesting += 1
			string << yield
			@nesting -= 1
			string << ("  " * @nesting) if @indent
			string << "</#{x}>"
			string << "\n" if @indent
		else
			string << "/>"
			string << "\n" if @indent
		end
		string
	end
end
