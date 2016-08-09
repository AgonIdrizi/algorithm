class Knight

	attr_accessor :location

	def initialize
		@location = nil
	end
end

class GameBoard
	attr_accessor :board

	def initialize(size)
		@board = create_board(size)
	end

	def display_board
		
	end

	private

	def create_board(size)
		
	end

	

end

board = GameBoard.new(8)
