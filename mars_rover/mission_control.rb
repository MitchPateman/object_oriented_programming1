require_relative 'rover'

class MissionControl
attr_accessor :x, :y, :direction, :position

	# puts "Line 1 ---> Enter two numbers for the plateau size (ex. 5 5):"
	# @grid = gets.chomp.gsub(" ", "").split("")
	def input
		puts "Line 2 ---> Enter the starting position and direction for Rover 1(ex. 1 2 n):"
		@position  = gets.chomp.gsub(" ", "").split("")
		@x = @position[0].to_i
		@y = @position[1].to_i
		@direction =  @position[2]

		puts "Line 3 ---> Enter a series of Move and Turn instructions for Rover 1(ex. lmlmlmlmm):"
		@user_commands = gets.chomp.split("")

		# puts "Line 4 ---> Enter the starting position and direction for Rover 2 (ex. 3 3 e):"
		# @position = gets.chomp.gsub(" ", "").split("")
		# @x = @position[0].to_i
		# @y = @position[1].to_i
		# @direction =  @position[2]
		#
		# puts "Line 5 ---> Enter a series of Move and Turn instructions for Rover 2 (ex. mmrmmrmrrm):"
		# @user_commands = gets.chomp.split("")

		create_rover
	end






def create_rover
	@rover = Rover.new(@x, @y, @direction)
	@rover.read_instruction(@user_commands)
	@rover.output
end

end #end of mission control class

####new mission control
MissionControl.new.input
