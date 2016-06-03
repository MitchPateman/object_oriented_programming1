# class Plateau
# 	attr_accessor :grid_x, :grid_y
#
# 	def initialize(location)
# 		@grid_x = location[0].to_i
# 		@grid_y = location[1].to_i
# 	end
# end

class Rover
	attr_accessor :rover_name, :x, :y, :direction, :move, :turn


	def initialize
		@x = x.to_i
		@y = y.to_i
		@direction = direction
	end


	def read_instruction
		case @move
			when "m" then move
		end
		case @turn
		when "l", "r" then turn
		end
	end



	def move
		case @direction
		when "n" then @y += 1
		when "e" then @x += 1
		when "s" then @y -= 1
		when "w" then @x -= 1
		end
	end #End of move method



	def turn
		case @turn
		when "l" && @direction == "n"
				@direction = "w"
			when "r" && @direction == "n"
				@direction = "e"

			when "l" && @direction == "e"
				@direction = "n"
			when "r" && @direction == "e"
				@direction = "s"

			when "l" && @direction == "s"
				@direction = "e"
			when "r" && @direction == "s"
				@direction = "w"

			when "l" && @direction == "n"
				@direction = "w"
			when "r" && @direction == "n"
				@direction = "e"

		end #### End of turn case

	end ###End of Turn method

	def report
		puts "Final Position RoverName: #{@x}, #{@y}, #{@direction}"
	end

end ###End of Rover class

puts "NO Caps when you are entering please"
puts "Line 1 ---> Enter two numbers for the plateau size (ex. 5 5):"
@grid_x, @grid_y = gets.chomp.gsub(" ", "").split("")

puts "Line 2 ---> Enter the starting position and direction for Rover 1(ex. 1 2 n):"
@x, @y, @direction  = gets.chomp.gsub(" ", "").split("")

puts "Line 3 ---> Enter a series of Move and Turn instructions for Rover 1(ex. lmlmlmlmm):"
@move, @turn = gets.chomp.split("")

puts "Line 4 ---> Enter the starting position and direction for Rover 2 (ex. 3 3 e):"
@x, @y, @direction = gets.chomp.gsub(" ", "").split("")

puts "Line 5 ---> Enter a series of Move and Turn instructions for Rover 2 (ex. mmrmmrmrrm):"
@move, @turn = gets.chomp.split("")

rovers = Rover.new
rovers.read_instruction
# rovers.turn
# rovers.move
rovers.report
