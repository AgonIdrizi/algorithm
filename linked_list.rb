class Node

	attr_accessor :value, :next

	def initialize(value=nil)
		@value = value
		@next = nil
	end
end

class LinkedList

	attr_accessor :size

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

	def pop
		node = @tail
		new_last_node = @head
		until new_last_node.next == node
			new_last_node = @head.next
		end
		new_last_node.next = nil
		@tail = new_last_node
		size -= 1
		node
	end

	def contains?(node_value)
		node = @head
		until node == @tail
			if node.value = node_value
				return true
			end
			node = node.next
		end
		return false
	end

	def find(data)
		node = @head
		until node == @tail do
			if node.value == data
				return node
			else
				node = node.next
			end
		end
		return nil
	end

	def to_s
	end

	def insert_at
	end

	def remove_at
	end
end
