class LinkedListNode
	attr_accessor :val, :next_node


	def initialize val, next_node
		@val = val
		@next_node = next_node
	 end
end


class LinkedList

	def empty?
		@head == nil
	end

	def append(node)
		if empty?
		@head = @tail = node


	end


end





class TreeNode
	attr_accessor :val, :left, :right

	def initialize val, left, right
		@val = val
		@left = left
		@right = right
	end
		

end


class Bst

	attr_reader :val

	def initialize val
		@root = TreeNode.new(val,nil,nil)
		@val = val

	end

	def inordertransversal(node=@root)
		return if node == nil
			inordertransversal(node.left)
	
			p node.val  # you print here cause you don't want to print the val twice
			inordertransversal(node.right)
	
	
	end



# 	printLevelorder(tree)
# 1) Create an empty queue q
# 2) temp_node = root /*start from root*/
# 3) Loop while temp_node is not NULL
#     a) print temp_node->data.
#     b) Enqueue temp_node’s children (first left then right children) to q
#     c) Dequeue a node from q and assign it’s value to temp_node





	def insert(value)
		current_node = @root
		while nil != current_node
			if (value < current_node.val) && (current_node.left == nil)
				#puts "Went left because Current Value: #{value} is less than Current Node #{current_node.val} and found an empty spot Inserted #{value}"
				current_node.left = TreeNode.new(value,nil,nil)
				return
					
			elsif (value > current_node.val) && (current_node.right == nil)
				#puts "Went right because Current Value: #{value} is more than Current Node #{current_node.val} and found a empty spot Inserted #{value}"
				current_node.right = TreeNode.new(value,nil,nil)
				return
			elsif (value < current_node.val)
				#puts "Went left to insert: #{value} but didn't find a empty spot but didn't find one. gonna try to to go down the line"
				current_node = current_node.left
				
			elsif (value > current_node.val)
				#puts "Went right to insert: #{value} but didn't find a spot. gonna try to to go down the line"
				current_node = current_node.right
				
			else

				return
			end
		end
		
	end

end



bst = Bst.new(4)
bst.insert(10)
bst.insert(2)
bst.insert(1)
bst.insert(7)
# bst.insert(8)
# bst.insert(6)
# bst.insert(14)
# bst.insert(5)
# bst.insert(54)
# bst.insert(20)



 bst.val

#  4
# 2  10
#1  7


