class Paperboy

attr_accessor :name, :quota, :experience, :side
attr_reader :earnings



	def initialize(name, side)
		@name = name
		@side = side
		@quota = 50
		@experience = 0
		@earnings = 0
		@money
	end



	def quota
		if @experience == nil
			@quota
		else
			@experience / 2 + @quota
		end
	end



	def deliver(start_address, end_address)

		deliveries = (end_address-start_address) / 2

		if 	deliveries > @quota
			@total = (deliveries - quota) * 0.5 + quota * 0.25
						 ### regular earnings +      over quota earnings

		elsif deliveries == @quota
			@total =  0.25 * @quota

		elsif deliveries < @quota
			@total = (0.25 * deliveries) - 2.00

		end

		@earnings += @total
		@experience += deliveries
		@total

	end



	def earnings
		puts @earnings
	end

	def report
		puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
	end



end #End of Paperboy class

mitch = Paperboy.new("Mitch", "even")
puts"----------------"
mitch.quota
mitch.deliver(100, 220)
mitch.earnings
mitch.report
puts"      "
mitch.quota
mitch.deliver(1, 150)
mitch.earnings
mitch.report
puts"------------------"
