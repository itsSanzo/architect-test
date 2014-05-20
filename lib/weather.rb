class Weather 

	def weather_generator
    rand(5)
	end

	def stormy?
    weather_generator == 1
	end


end