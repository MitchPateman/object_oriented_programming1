class Rover
	attr_accessor :instruction


	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction(instruction)
		instruction.each do |command|
			case command
			when "M" then move
			when "L" then turn_left
			when "R" then turn_right
			end #End of read_instruction case
		end # End of each do
	end # End of read_instruction method

	def turn_left
		case @direction
			when "N" then @direction = "W"
			when "E" then @direction = "N"
			when "S" then @direction = "E"
			when "W" then @direction = "S"
				#else "enter l or r"
		end #### End of turn left method
	end

	def turn_right
			case @direction
				when "N" then @direction = "E"
				when "E" then @direction = "S"
				when "S" then @direction = "W"
				when "W" then @direction = "N"
				#else "Enter l or r"
			end #### End of turn right case
	end ###End of Turn right method


	def move
		case @direction
		when "N" then @y += 1
		when "E" then @x += 1
		when "S" then @y -= 1
		when "W" then @x -= 1
		end #End of move case
	end #End of move method

	def output
		"#{@x}, #{@y}, #{@direction}"
	end

end #End of Rover class
