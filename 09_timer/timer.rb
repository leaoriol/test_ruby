class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def display_seconds(seconds)
		min, sec = seconds.divmod(60)
		hrs, min = min.divmod(60)
		days, hrs = hrs.divmod(24)
		return "%02d:%02d:%02d" % [hrs, min, sec]
	end

	def time_string
		@seconds = display_seconds(seconds)
	end

end

