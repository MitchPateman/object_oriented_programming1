class Rover
	attr_accessor :rover_name, :x, :y, :direction, :move, :turn


	def initialize
		@x = @position[0].to_i
		@y = @position[1].to_i
		@direction = @position[2].upcase.to_sym
	end

	def turn
		case @turn   ####what is this
			when "l" && @direction == :N then @direction = :W
			when "r" && @direction == :N then @direction = :E

			when "l" && @direction == :E then @direction = :N
			when "r" && @direction == :E then @direction = :S

			when "l" && @direction == :S then @direction = :E
			when "r" && @direction == :S then @direction = :W

			when "l" && @direction == :N then @direction = :W
			when "r" && @direction == :N then @direction = :E

			else "Enter l or r"
				
		end #### End of turn case
	end ###End of Turn method

end #End of Rover class
