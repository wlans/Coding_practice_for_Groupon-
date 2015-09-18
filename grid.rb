# class SearchGrid 
# 	attr_accessor :right, :down, :left, :up

# 	def Clockwise_Transversal

# end 



# class TreeNode
#     attr_accessor :value, :left, :right
    
#     # The Tree node contains a value, and a pointer to two children - left and right 
#     # Values lesser than this node will be inserted on its left
#     # Values greater than it will be inserted on its right
#     def initialize val,left,right
#         @value = val
#         @left = left
#         @right = right
#     end
# end

# def Counter_Clockwise_Transversal(arr)

# end 


sq = [ [1, 2],  
			 [22,23]
			
			  ] 



def Clockwise_Transversal(arr)
	# Initialize
	@result = []
	@arr = arr
	@firstrow = 0
	p "Size is #{arr.flatten.size} "
	# Robot Instuctions 
	go_left_or_right(@arr,0)  										# RIGHT TO START IT OFF

	while arr.flatten.size != 0
	
	go_down(@arr,-1) 															# DOWN

	go_left_or_right(@arr,@y,-1)									# LEFT

	go_up(@arr,0)																	# UP		

	go_left_or_right(@arr,@x) if arr.flatten.size != 0                     # RIGHT
end


	p @result
	
arr.each do |row|
	p row
end
end 

# sq[1].slice!(-1)

def go_left_or_right(arr,row_n,n=0)
	while arr[row_n][n] != nil
		@result << arr[row_n].slice!(n) if  arr[row_n].slice(n) != nil
		
	end
end

def go_down(arr,n)
	y = 0
	arr.each  do |row|
		# p "#{row[n]} Up or down"
		@result << row.slice!(n) if  row.slice(n) != nil
	 @y = y if !row.empty?
	 y+=1 
	end
end

def go_up(arr,n)
	x = arr.size
	arr. reverse_each do |row|
	# p "#{row[n]} Up or down"
	@result << row.slice!(n) if  row.slice(n) != nil
	@x = x if !row.empty?
	x-=1 
end
end



row1 = [1,2,3]

# go_right(sq[0])
# go_down(sq)


Clockwise_Transversal(sq)
# counter_clockwise(sq)