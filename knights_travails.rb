class Knight

	attr_accessor :location

	def initialize
		@location = nil
	end

	def knight_moves(start, finish)

	end

end

class Node
	attr_accessor :value, :parent
	def initialize
		@value = nil
		@parent = nil
	end
end

class BuildTree
	def initialize(coordinates)
		@root_node = find_root_square(coordinates)
		build_tree(coordinates)
	end

	private

	def find_root_square(coordinates)

	end

	def build_tree(coordinates)

	end
end

class GameBoard
	attr_accessor :board

	def initialize(size)
		@board = create_board(size)
	end

	private

	def create_board(size)
		board = []
		for x in 0...size
			row = []
			for y in 0...size
				square = Square.new([x, y])
				row << square
			end
			board << row
		end
		board
	end

	class Square

		attr_accessor :coordinates

		def initialize(coordinates)
			@coordinates = coordinates
		end
	end
end

board = GameBoard.new(8)
puts "please put the starting co-ordinates as two numbers separated by a space"
starting_coordinates = gets.chomp.split(" ")
puts "please put the finishing co-ordinates as two numbers separated by a space"
finishing_coordinates = gets.chomp.split(" ")
knight = Knight.new
knight.location = starting_coordinates
knight.knight_moves(starting_coordinates, finishing_coordinates)
