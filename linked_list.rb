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
	end

	def append(node)
		if @head == nil
			@head = node
			@tail = node
		else
			@tail.next = node
			@tail = node
		end
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
	end

	def size
	end

	def head
	end

	def tail
	end

	def at
	end

	def pop
	end

	def contains?
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