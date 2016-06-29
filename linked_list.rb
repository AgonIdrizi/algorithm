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
		return nil if @size < index
		current_index = 0
		node = @head
		while current_index <= index
			node = node.next
			current_index += 1
		end
		node
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

	def contains?(value)
		node = @head
		until node.value = value
			node = node.next
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
