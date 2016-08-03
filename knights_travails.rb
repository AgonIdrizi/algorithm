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

	attr_accessor :value, :parent, :children

	def initialize
		@value = nil
		@parent = nil
		@children = []
	end
end

class BuildTree

	attr_accessor :root_node

	def initialize
		@root_node = nil
		build_tree
	end

	private

	def build_tree
	end
end


