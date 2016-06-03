class Cat

attr_accessor :name, :preferred_food, :meal_time

	def initialize(name, preferred_food, meal_time)
		@name = name
		@preferred_food = preferred_food
		@meal_time = meal_time
	end

	def eats_at
		if @meal_time.to_i < 12
			puts "#{@meal_time}"
		elsif @meal_time.to_i > 12
			puts "#{@meal_time - 12}"
		else
			puts "noon"
		end
	end

	def meow
		if @meal_time < 12
			@meal_time = "#{@meal_time} AM"
		elsif @meal_time > 12
			@meal_time = "#{@meal_time - 12} PM"
		else
			@meal_time = "noon"
		end

		puts "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
	end

end

betty = Cat.new("Betty", "Tuna", 11)
butch = Cat.new("Butch", "Fancy Feast", 14)
betty.meow
butch.meow
betty.eats_at
butch.eats_at
