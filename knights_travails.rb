class Knight

	attr_accessor :location

	def initialize(location)
		@location = location
	end

	def knight_moves(finishing_coordinates)
	end
end

class GameBoard

	attr_accessor :board

	def initialize(size)
		@board = create_board(size)
	end

	private

	def create_board(size)
		Array.new(size) {Array.new(size)}
	end

end

puts "Welcome to Knight_Travails. Where you can find the quickest way a Knight can move from one square to any other square on a board."
puts
puts "The board consists of an x and y axis starting from 0 up to 7 on both axis."
puts
puts "The top-left square is at co-ordinate 0,0. The bottom-right square is 7,7. Please enter your co-ordinates in the same way. i.e as 3,4 or 5,6"
puts
puts "Please enter your starting co-ordinate"
starting_coordinates = gets.chomp
puts
puts "Thank you. Please now enter the finishing co-ordinates"
finishing_coordinates = gets.chomp
puts
knight = Knight.new(starting_coordinates)
knight.knight_moves(finishing_coordinates)