def Knight
	def initialize
	end

	def knight_moves
	end
end

def GameBoard
	attr_accessor :board

	def initialize
		@board = []
		create_board
	end

	def create_board
		for 0..7 do |x|
			for 0..7  do |y|
			end
		end
	end
end

def BoardSquare
	attr_reader :x, :y
	def initialize(x, y)
		@x = x
		@y = y
	end
end