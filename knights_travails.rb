class Knight

	attr_accessor :location

	def initialize
		@location = nil
	end
end

class GameBoard
	attr_accessor :board

	def initialize
		@board = create_board
	end

	private

	def create_board
		Array.new(8) {Array.new(8)}
	end
end

class Node
end


