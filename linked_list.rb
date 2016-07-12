class Node

	attr_accessor :value, :next

	def initialize(value=nil)
		@value = value
		@next = nil
	end
end

class LinkedList

	attr_accessor :size, :head, :tail

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
			@tail.next = nil
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
		index.times do
			current_node = current_node.next
		end
		current_node
	end

	def pop
		node = @tail
		new_last_node = @head
		until new_last_node.next == node
			new_last_node = @head.next
		end
		new_last_node.next = nil
		@tail = new_last_node
		@size -= 1
		node
	end

	def contains?(node_value)
		node = @head
		until node == nil
			if node.value == node_value
				return true
			end
			node = node.next
		end
		return false
	end

	def find(data)
		node = @head
		index = 0
		until node == nil do
			if node.value == data
				return index
			else
				node = node.next
				index += 1
			end
		end
		return nil
	end

	def to_s
		string = ""
		node = @head
		loop do
			string << "(#{node.value}) -> "
			break if node == @tail
			node = node.next
		end
		string << "(nil)"
		string
	end

	def insert_at(data, index)
		if index >= @size
			puts "Node doesn't exist"
			return nil
		end
		node = @head
		current_index = 0
		until current_index == index do
			node = node.next
			current_index += 1
		end
		node.value = data
		node
	end

	def remove_at(index)
		if index >= @size
			puts "Node doesn't exist"
			return nil
		end
		if index == 0
			current_node = @head
			return_node = @head
			@head = current_node.next
		elsif index == (size - 1)
			return_node = pop
		else
			current_node = @head
			(index - 1).times do
				current_node = current_node.next
			end
			return_node = current_node.next
			current_node.next = return_node.next
		end
		return_node
	end
end