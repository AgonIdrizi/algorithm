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

	def breadth_first_search(value)
		current_node = nil
		queue = []
		visited = []

		queue.unshift(@root_node)


		until queue.empty?
			current_node = queue.pop
			visited << current_node
			return current_node if current_node.value == value
			queue.unshift(current_node.left_child) if !current_node.left_child.nil? && !visited.include?(current_node.left_child)
			queue.unshift(current_node.right_child) if !current_node.right_child.nil? && !visited.include?(current_node.right_child)
		end
		return nil
	end

	def depth_first_search(value)
		stack = []
		visited = []

		stack << @root_node

		until stack.empty?
			current_node = stack[0]
			visited << current_node unless visited.include?(current_node)
			return current_node if current_node.value == value
			stack.shift if (visited.include?(current_node.left_child) || current_node.left_child.nil?) && (visited.include?(current_node.right_child) || current_node.right_child.nil?)
			stack.unshift(current_node.left_child) if !current_node.left_child.nil? && !visited.include?(current_node.left_child)
			stack.unshift(current_node.right_child) if !current_node.right_child.nil? && !visited.include?(current_node.right_child)
		end
		return nil
	end

	private

	def build_tree(data)
		data.each do |value|
			node = build_node(value)
			place_node(node)
		end

		data
	end

	def place_node(node, current_node = @root_node)
		@root_node ||= node
		return if node == @root_node

		if node.value < current_node.value
			if current_node.left_child == nil
				current_node.left_child = node
				node.parent = current_node
				return node
			else
				place_node(node, current_node.left_child)
			end
		else
			if current_node.right_child == nil
				current_node.right_child = node
				node.parent = current_node
				return node
			else
				place_node(node, current_node.right_child)
			end
		end

	end

	def build_node(value)
		node = Node.new
		node.value = value
		node
	end
end

tree_array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
tree = BuildTree.new(tree_array)
node = tree.breadth_first_search(6345)
puts node.nil? ? "The node was not found" : "The node was found"

node1 = tree.depth_first_search(67)
puts node1.nil? ? "The node was not found" : "The node was found"
