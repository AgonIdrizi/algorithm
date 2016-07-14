class Node

	attr_accessor :value, :parent, :left_child, :right_child

	def initialize
		@value = nil
		@parent = nil
		@left_child = nil
		@right_child = nil
	end
end

class BuildTree

	attr_accessor :root_node

	def initialize(data)
		@root_node = nil
		build_tree(data)
	end

	def build_tree(data, left=0, right=data.length-1)
		return if left > right

		mid_data = find_data_middle(left, right)
		node = Node.new

		@root_node ||= node

		node.value = (data[mid_data])
		node.parent = mid_data unless node == @root_node
		node.left_child = build_tree(data, left, mid_data-1)
		node.right_child = build_tree(data, mid_data+1, right)

		node
	end

	private

	def find_data_middle(left, right)
		left + (right - left) / 2
	end
end

tree_array = [1,2,3,4,5,6,7]
tree = BuildTree.new(tree_array)
