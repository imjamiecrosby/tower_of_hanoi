class TowerOfHanoi
	attr_accessor :pile_one, :pile_two, :pile_three, :correct_pile, :start_pile, :end_pile, :pop_value

	def initialize
		@pile_one  = [1,4,7]
		@pile_two = [2,9,8]
		@pile_three = [3,5,6]
		@correct_pile = [9,8,7,6,5,4,3,2,1]
		@start_pile = ""
		@end_pile = ""
		@pop_value = 0
	end

	def game
		until @pile_one == @correct_pile or @pile_two == @correct_pile or @pile_three == @correct_pile

		 	puts "#{@pile_one.join(",")} is Tower One."
		 	puts "#{@pile_two.join(",")} is Tower Two."
		 	puts "#{@pile_three.join(",")} is Tower Three."
		 	puts "Organize the numbers in decending order."
		 	print "What pile would you like to select from? Enter one, two, three: "
		 	@start_pile = gets.chomp
		 	print "What pile would you like to place the disk on? Enter one, two, or three: "
		 	@end_pile = gets.chomp

		 		if @start_pile == "one" and @end_pile == "two"
		 			@pop_value = @pile_one.pop
		 			@pile_two.push(@pop_value)
		 	
		 		elsif @start_pile == "one" and @end_pile == "three"
		 			@pop_value = @pile_one.pop
		 			@pile_three.push(@pop_value)

		 		elsif @start_pile == "two" and @end_pile == "one"
		 			@pop_value = @pile_two.pop
		 			@pile_one.push(@pop_value)

		 		elsif @start_pile == "two" and @end_pile == "three"
		 			@pop_value = @pile_two.pop
		 			@pile_three.push(@pop_value)

		 		elsif @start_pile == "three" and @end_pile == "one"
		 			@pop_value = @pile_three.pop
		 			@pile_one.push(@pop_value)

		 		else @start_pile == "three" and @end_pile == "two"
		 			@pop_value = @pile_three.pop
		 			@pile_two.push(@pop_value)
		 		end	 
		 	end	
	 end
end

