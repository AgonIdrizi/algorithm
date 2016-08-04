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
		populate_board
	end

	def display_board
		@board.each do |row|
			print row.to_s + "\n"
		end
	end

	private

	def create_board(size)
		Array.new(size) {Array.new(size)}
	end

	def populate_board
		@board.each_with_index do |row, row_index|
			row.each_with_index do |square, square_index|
				temp = [row_index, square_index]
				@board[row_index][square_index] = temp
			end
		end
		@board
	end

end

board = GameBoard.new(8).display_board
