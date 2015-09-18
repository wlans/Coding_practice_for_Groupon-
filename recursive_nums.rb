




# @numbers = (1..26).to_a
# letters  = ("a".."z").to_a
# @dict = Hash[*@numbers.zip(letters).flatten]


# puts /6/.match("642353647")

# def string_decoder(string)
# 	string = string.to_s
# 	@letter = @dict[string] if @dict.include?(string)
# 	for number in @numbers
# 		return @dict[number] if @dict[number].match(string)
			
		
# 	end

# 	end 

#  @dict

# def string_decoder(string)
# 		i = 0
# 		array = []
# 		while i < @string.length-1
# 		 array.push(@dict[1]) if @dict.include?(@string[i].to_i)
# 		 i += 1
# 		end
# 		return array
# n.n.n.n got it


# nn.n.n
# n.nn.n
# n.n.nn 


# nn.nn got it


# def seperate_1 (string)
# string.scan(/.{1}|.+/).join(".")
# end

# def seperate_2 (string)
# string.scan(/.{2}|.+/).join(".")
# end

# def seperate_3 (string)
# newstring = seperate_1 (string)
# a = []
# i = 1
# string.length.times do |n|
# 	newstring = seperate_1 (string)
# 	newstring.slice!(i)
# 	a.push(newstring)
# 	i += 2
# end
# puts a
# end

# p seperate_1('666666')
# p seperate_2('666666')
#  seperate_3('666666')



# end

# def decoder(string)
# 	count = 0
# 	if string == '0' or string.nil?
# 		return
# 	elsif
# 		string.length == 1
# 			return 1
# 	else
# 	 string.length.times do |n|
# 	 	if (string[n].to_i >= 1 and string[n].to_i <= 2) and (string[n+1].to_i <= 6)
# 	end
# 	 	elsif (string[n].to_i >= 1 and string[n].to_i <= 9)
# 	 		return true
# 	 		puts "yay"
	 
	 	
# 	 end

# 	end
	
# end

# 23561
# 2,3,5,6,1
# 23,5,6,1
# 2,3,5,61
# 2,

# n.n.n.n.n.n

# nn.n.n.n.n

# n.nn.n.n.

# n.n.n
	
# end
	


# STEP ONE get all one digest 
# STEP TWO then get all two digits
# STEP THREE then get one (two dig)

# move down one
# STEP FOUR get one dig? then one dig?

# def decoder(string)
# 	if string == 0
# 		return 0


# def decoder(str,n=1)
# 	if str.length <= 1
# 		return
# 	str[0..n] >= 10 and str[0..n] <= 26
# 		count += 1
# 		# then pop off the first letter

# end

# can not be more then 26

def decoder(str)
	t = 0 
	str.times do |n|
		if str[n..2] < 26
			t += 1
		end
	end


end




# # Tests

# # p decoder('0') # Should give 0
# # p decoder('1') # Should give 1
# # p decoder('11')  # Should give 2

# # p decoder('asdklkfs')
# # p decoder(nil)
# # p decoder('234234206954695465423')
p decoder ('6131')
# # p decoder('54352390430')
# p decoder('5435904365464560')




# 235612
# 2.3.5.6.1 good
# 23.5.6.1 good
# 2.3.5.61 bad 
# 25 56 1 bad


# n.n.n.n 

# nn.n.n
# n.nn.n
# n.n.nn 
# nn.nn

#####

# n.n.n.n.n.n  got this
# nn.n.n.n.n
# n.nn.n.n.n
# n.n.nn.n.n
# n.n.n.nn.n
# n.n.n.n.nn

# nn.nn.n.n
# nn.n.nn.n # need this
# nn.n.n.nn

# nn.nn.nn got this

# 2.3.5.6.1.2 good
# 23.5.6.1.2 good
# 2.35.6.1.2 bad 
# 2.3.56.1.2 bad
# 2.3.5.61.2 bad 
# 2.3.5.6.12 good
# 23.56.1.2 bad 
# 23.5.61.2 good
# 23.5.6.12 good
# 23.56.12 bad 


