def measure(n=1)
	x = Time.now
	n.times do
		yield
	end
	elapsed_time = (Time.now - x) / n
end