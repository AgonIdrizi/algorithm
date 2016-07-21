class board_square

	attr_accessor :coordinates, :parent

	def initialize
		@coordinates = nil
		@parent = nil
	end
end

class Knight
	def initialize
	end

	def knight_moves(start_point, end_point)
		current_position = start_point
		queue = []
		visited = []
	end
end