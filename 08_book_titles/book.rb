class Book
	attr_accessor :title
	def title=(name)
		y = name.split
		y.each do |word|
			word.capitalize! unless %w{and over the on in of a an}.include? word
		end
		y[0].capitalize!
		@title = y.join(' ')
	end
end