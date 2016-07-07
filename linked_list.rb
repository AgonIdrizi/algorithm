class Node

	attr_accessor :value, :next

	def initialize(value=nil)
		@value = value
		@next = nil
	end
end

class LinkedList

	def initialize
		@head = nil
		@tail = nil
		@size = 0
	end

	def append(node)
		if @head == nil
			@head = node
			@tail = node
		else
			@tail.next = node
			@tail = node
		end
		@size += 1
	end

	def prepend(node)
		if @head == nil
			@head = node
			@tail = node
		else
			temp = @head
			@head = node
			@head.next = temp
		end
		@size += 1
	end

	def size
		@size
	end

	def head
		@head
	end

	def tail
		@tail
	end

	def at(index)
		current_node = @head
		for 0..index do
			current_node = current_node.next
		end
		current_node
	end

	def pop
		return_node = @tail
		current_node = @head
		current_node = current_node.next until current_node.next == return_node
		@tail = current_node
		size -= 1
		return_node
	end

	def contains?(node_value)
		current_node = @head
		until current_node = @tail do
			if current_node.value = node_value
				return true
			end
			current_node = current_node.next
		end
		return false
	end

	def find
	end

	def to_s
	end

	def insert_at
	end

	def remove_at
	end
end