# def rotate_left(list_numbers,k)

# 	rotate_slots = k % list_numbers.length
# 	new_array = list_numbers.slice!(0,rotate_slots)
# 	list_numbers << new_array
	

# 	puts list_numbers.join(",")




# end

# rotate_left([1,2,3,4,5],2)

# def fib(n)
# 	if n == 0
# 		return 0
# 	elsif n == 1
# 		return 1
# 	else
# 		return fib(n-1) + fib(n-2)
# 	end
# end

# p fib(4)

# what do we know 
# I can get the right ansewer by puts f

# def dec_to_bin(n)
# 	if n == 0
# 		return
# 	else
# 		n, f =  n.divmod(2)

# 		n = dec_to_bin(n)
# 		p f
# 	end

# end

# p dec_to_bin(3)



# p dec_to_bin(5)
# p dec_to_bin(5)
# end
# This one works
# def sort_plus_remove_dup(a = [1, 3,3,3 ,4, 2, 1, 2, 4])
# 	a.sort!
# 	p a
# 	result = []
# 	a.length.times do |n|
# 		if a[n-1] == a[n]
# 			result << a.slice(a[n])
			
		
# 		end
# 	end
# 	return result
# endfind all permutations of an array

# p sort_plus_remove_dup


# def reverse_string(str)
# 	#p str.scan(/./)
# 	new_string = []
# 	str = str.chars
# 	str.length.times do |char|
# 		new_string << str[str.length-1]
# 		str.slice!(-1)


# 	end
# return new_string.join("")
# end

# p reverse_string("race car")

# def panlindrome(str)
# 	reverse_string(str) == str ? (return true) : (false)
# end


# p panlindrome("")

# def find_missing_number(arr)
# 	full_arr = (1..10).to_a
# 	arr.each do |n|
# 		full_arr.delete(n)
# 	end
# 	full_arr

# end 


# p find_missing_number([1, 3, 4, 5, 6, 7, 8, 9, 10]) 



# def perm(str,n=0)
# 	if n == str.length
# 		p 
# 	else
# 	str = str
# 	# puts "hey #{n}"
# 	p str[n]
# 	# result = []
# 	# str = str.scan(/./)
# 	# # if n == str.length-1 
# 	# # 	return newstr
# 	# newarr = str[1..-1]
# 	# newarr.count.times do 
# 	# newarr.rotate!
# 	# p newarr
# 	# result << newarr
# 	# # newarr1.insert(0,str[0])
# 	n += 1
# 	perm(str,n)
# end
# # p result
# end
# #  abc, acb cba cab bac bca

# def perm(str)
# 	result = []
# 	str = str.scan(/./)
# 	str.length.times do
# 	str_last_half = str[1..-1]
# 		str_last_half.length.times do
# 			str_last_half = str_last_half.rotate
# 			result.push((str[0].split << str_last_half).flatten)
# 		end
# 		str.rotate!
# 	end 
# 	p result
# end
# perm("abc")

# def permrucur(str,n)
# 	str = str.scan(/./).to_a if  str.class == String
# 	p str[n]
# 	p str[1..-1].rotate!
# end


# permrucur("abc",1)

# def best_seq(arr= [5,-2,3])
# 	bestsum = 0 
# 	currentsum = 0
# 	arr.length.times do |n|
# 		p bestsum
# 		p currentsum
# 		currentsum += arr[n]
# 		if currentsum < 0 
# 			currentsum = 0
# 		elsif currentsum + arr[n] > bestsum
# 			bestsum = currentsum
# 		end
# 	end
# bestsum
# end

# p best_seq


# I have to go counter clockwise
# 


sq = [ [1,2,3,"a"],  # 0
			 [4,5,6,"b"],  # 1
			 [7,8,9,"c"],
			 [10, 11, 12, 13] ] # 2
 sq
# ROW, COL

puts "#{sq[0].length} Row One"
puts "#{sq[1].length} Row Two"
puts "#{sq[2].length} Row Three"


# p sq[0][0], sq[0][1], sq[0][2], sq [1][2]

result = []
sq[0].length.times do
result << sq[0].slice!(0)
end
result << sq[1].slice!(-1)
sq[2].length.times do
	result << sq[2].slice!(-1)
end 
result << sq[1]
p sq
p "#{result.flatten} Your result sir"

puts "#{sq[0].length} Row One"
puts "#{sq[1].length} Row Two"
puts "#{sq[2].length} Row Three"
# class Animal
# 	attr_accessor :val , :left, :right

# 	def initalize
# 		@val = val
# 		@left = left
# 		@right = right

# 	end

# end

# p = Animal.new
# puts p