require_relative 'rover'

class MissionControl
attr_accessor :x, :y, :direction, :position

	## puts "Line 1 ---> Enter two numbers for the plateau size (ex. 5 5):"
	# @grid = gets.chomp.gsub(" ", "").split("")
	def input

		puts "Please Enter Capital Letters"
		puts "Enter the starting position and direction for Rover 1 (ex. 1 2 n):"
		@position  = gets.chomp.gsub(" ", "").split("")
		@x = @position[0].to_i
		@y = @position[1].to_i
		@direction =  @position[2]


		puts "Enter Move and Turn instructions for Rover 1 (ex.lmlmlmlmm *IN CAPS):"
		@user_commands = gets.chomp.gsub(" ", "").split("")

		create_rover

		puts "Please Enter Capital Letters"
		puts "Enter the starting position and direction for Rover 2 (ex. 3 3 E):"
		@position  = gets.chomp.gsub(" ", "").split("")
		@x = @position[0].to_i
		@y = @position[1].to_i
		@direction =  @position[2]


		puts "Enter Move and Turn instructions for Rover 2 (ex.mmrmmrmrrm *IN CAPS):"
		@user_commands = gets.chomp.gsub(" ", "").split("")


		create_rover2
	end


	def create_rover
		@rover = Rover.new(@x, @y, @direction)
		@rover.read_instruction(@user_commands)
		puts @rover.output
	end

	def create_rover2
		@rover2 = Rover.new(@x, @y, @direction)
		@rover2.read_instruction(@user_commands)
		puts @rover2.output
	end

end #end of mission control class


####new mission control
MissionControl.new.input
