
class TreeNode
    attr_accessor :value, :left, :right
    
    # The Tree node contains a value, and a pointer to two children - left and right 
    # Values lesser than this node will be inserted on its left
    # Values greater than it will be inserted on its right
    def initialize val,left,right
        @value = val
        @left = left
        @right = right
    end
end

class BinarySearchTree
    
    # Initialize the Root Node
    def initialize val
        puts "Initializing with: " + val.to_s
        @root = TreeNode.new(val,nil,nil)   
    end

    # In-Order Traversal : Displays the final output in sorted order
    # Display smaller children first (by going left)
    # Then display the value in the current node 
    # Then display the larger children on the right
    # Anything doing this will puts it's own value once there is nothing smaller
    def inOrderTraversal(node = @root)
        return if (node == nil)
        inOrderTraversal(node.left)
        puts node.value.to_s
        inOrderTraversal(node.right)


    end

     
    # Inserting a value
    # When value > current node, go towards the right
    # when value < current node, go towards the left
    # when you hit a nil node, it means, the new node should be created there
    # Duplicate values are not inserted in the tree
    def insert(value)
        puts "Inserting :" + value.to_s
        current_node = @root

        while nil != current_node

            if (value < current_node.value) && (current_node.left == nil)
                current_node.left = TreeNode.new(value,nil,nil)
                puts "val is less"

            elsif  (value > current_node.value) && (current_node.right == nil)
                current_node.right = TreeNode.new(value,nil,nil)
                puts "val is more"

            elsif (value < current_node.value)
                current_node = current_node.left
                puts "doing this not nil left"

            elsif (value > current_node.value)
                current_node = current_node.right
                puts "doing this not nil right"

            else
                return
            end
        end
    end
end

bst = BinarySearchTree.new(1)
bst.insert(4)
bst.insert(2)
bst.insert(5)

bst.insert(4)
# bst.insert(34)
# bst.insert(17)
# Demonstrating Different Kinds of Traversals
puts "In-Order Traversal:"
bst.inOrderTraversal


def rock_judger(rocks_arr) 
	puts rocks_arr.join(",")
    if rocks_arr.length <= 2  # the base case
      a = rocks_arr[0]
      b = rocks_arr[-1]
    else
      a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))  # First Half of the current array
      b = rock_judger(rocks_arr) # Back half of current array


    end    
    # puts rocks_arr
    # puts b
    # puts "#{b} B"  
    # puts "#{a} A"

    return a > b ? a : b


end

 
rocks = 6.times.map{rand(200) + 1}
# rocks1 = 10.times.map{rand(200) + 1}
# puts rocks1.join(', ')
#  rocks1.slice!(0,rocks1.length/2)
# puts rocks1.join(', ')
# rocks1.slice!(0,rocks1.length/2)
# puts rocks1.join(', ')

puts rocks.join(', ')
puts "Heaviest rock is: #{rock_judger(rocks)}"


# Get Random email
n = rand(1000)
arary = []

n.times do
	m = rand(1000)
	arary.push("email#{m}")
end

def get_rand_email(list)
	length_of_list = list.length-1
	list[rand(list.length)]

end

# puts arary.join(",")
puts "Random email #{get_rand_email(arary)} from #{n} emails."

require 'pry'

# make a node class
class Node
  attr_reader :value
  attr_accessor :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

# make a linked list class # append shift prpend

class LinkedList
  # def initialize
  #   # maybe later?
  # end

  def empty?
    @head == nil
  end

  def shift
    node_to_return = @head
    if node_to_return
      @head = @head.next_node
      node_to_return.value
    else
      raise "You can't shift an empty list"
      # (returning nil would also be
      # acceptable here)
    end
  end

  def append(value)
    if empty?
      # our list is empty
      # that means @head and @tail are nil
      @head = @tail = Node.new(value, nil)
    else
      new_node = Node.new(value, nil)
      @tail.next_node = new_node
      @tail = new_node
    end
    self
  end

  def prepend(value)
    if empty?
      # our list is empty
      # that means @head is nil
      @head = @tail = Node.new(value, nil)
    else
      new_node = Node.new(value, @head)
      @head = new_node
    end
    self
  end

  def to_s
    cursor = @head
    while cursor !=nil
      print "#{cursor.value}->"
      cursor = cursor.next_node
    end
    print "\n"
  end
end

class MyStack
  def initialize
    @list = LinkedList.new
  end

  def push(value)
    @list.prepend(value)
    self
  end

  def pop
    @list.shift
  end
end

class MyQueue
  def initialize
    @list = LinkedList.new
  end

  def enqueue(value)
    @list.append(value)
    self
  end

  def dequeue
    @list.shift
  end
end

binding.pry