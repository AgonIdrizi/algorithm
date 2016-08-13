class Node
  attr_reader :x, :y, :parent_obj

  def initialize(x, y, parent_obj = nil)
    @x = x
    @y = y
    @parent_obj = parent_obj
  end

  def make_children
    candidates = [[@x+2, @y-1], [@x+2, @y+1], [@x+1, @y-2], [@x+1, @y+2], [@x-1, @y-2], [@x-1, @y+2], [@x-2, @y-1], [@x-2, @y+1]]
    candidates.select { |c| c[0]>=0 && c[0]<=7 && c[1]>=0 && c[1]<=7 }.map { |coords| Node.new(coords[0], coords[1], self)}
  end

end

def search(search_obj, root_obj)
  queue = []
  queue << root_obj
  while true
    current = queue.shift
    return current if current.x == search_obj.x && current.y == search_obj.y
    current.make_children.each { |child| queue << child}
  end
end

def knight_moves(root_arr, search_arr)
  search_obj = Node.new(search_arr[0], search_arr[1])
  root_obj = Node.new(root_arr[0], root_arr[1])
  result = search(search_obj, root_obj)

  route = []
  route.unshift([search_obj.x, search_obj.y])
  current = result.parent_obj
  until current.nil?
    route.unshift([current.x, current.y])
    current = current.parent_obj
  end
  puts "You made it in #{route.size - 1} moves! Here's your route:"
  route.each { |square| puts "#{square}"}
  return nil
end

knight_moves([3,3],[4,3])
