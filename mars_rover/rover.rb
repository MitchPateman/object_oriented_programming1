class Rover
	#attr_accessor :rover_name, :x, :y, :direction, :move, :turn


	def initialize
		@x = @position[0].to_i
		@y = @position[1].to_i
		@direction = @position[2].upcase.to_sym
	end

	def read_instruction
		@instructions.each do |command|
			case @command
				when "m" then move
				when "l" then turn_left
				when "r" then turn_right
			end #End of read_instruction case
		end # End of each do
	end # End of read_instruction method

	def turn_left
		case @direction ####what is this varilable????
			when :N then @direction = :W
			when :E then @direction = :N
			when :S then @direction = :E
			when :N then @direction = :W
			else "Enter l or r"
		end #### End of turn left method
	end

	def turn_right
			case @turn   ####what is this varilable????
				when :N then @direction = :E
				when :E then @direction = :S
				when :S then @direction = :W
				when :N then @direction = :E
				else "Enter l or r"
			end #### End of turn right case
	end ###End of Turn right method


	def move
		case @direction
			when :N then @y += 1
			when :E then @x += 1
			when :S then @y -= 1
			when :W then @x -= 1
		end #End of move case
	end #End of move method

end #End of Rover class
