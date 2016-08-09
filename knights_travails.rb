class Square

	attr_accessor :coordinates

	def initialize(coordinates)
		@coordinates = coordinates
	end

	def to_s
		@coordinates
	end
end

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



end

board = GameBoard.new(8)
