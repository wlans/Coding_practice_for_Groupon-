a = ["R","R", "S"]
b = ["R","G","B","B","G","R","Y"]
c = ["R","G","B","B","G","R","Y"]
d = ["R","G", "D", "D", "B","B","G","R","Y"]
e = ["R","R","G","B","B","G","R","Y"]
f = []
g = nil


def find_couples(array_of_colors)
	return "Array Can't be Empty!" unless !array_of_colors.nil?
	@count = 0
	 if array_of_colors.length > 1 # Base case
			color_count_array = []
			i = 0
			for color in array_of_colors
				i += 1

				if color_count_array.length == 0
					color_count_array.push(color)
				elsif color_count_array.length == 1 and color_count_array[0] == color
					color_count_array.push(color)
					array_of_colors.delete(color)
					find_couples(array_of_colors)
					puts "Double Found #{color}"
					@count += 1
					
				elsif i == array_of_colors.length
					puts i
					puts array_of_colors
					puts "#{color_count_array[0]} has no doubles"
					array_of_colors.delete(color_count_array[0])
					find_couples(array_of_colors)
			end


			end
	 end
	@count
end 

p find_couples(d)




# integer_to_string(1) -> "one"
# integer_to_string(10) -> "ten"

# Just doing twenty and above

# Positve and up to 100

@werid_numbers = {1 => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine", 20 => "Twenty", 30 => "Thirty", 40 => "Fourty", 50 => "Fifty", 60 => "Sixty", 70 => "Seventy", 80 => "Eighty", 90 => "Ninty"}
@base_ten = {1 => "Ten", 2 => "Hundred" }

def integer_to_string(input_int)
log =  Math.log10(input_int).floor
string_var = ""  
#   p input_int.divmod(10)
  seperate_numbers_of_input =  input_int.to_s.split("")
  
  # each_with_index |input, index|
  seperate_numbers_of_input.each_with_index do |input,index|
   p input
    if index == 0 and @werid_numbers.include?(input.to_i*10) 
     string_var += @werid_numbers[input.to_i*10] + " "

    elsif @werid_numbers.include?(input.to_i)
      string_var += @werid_numbers[input.to_i] + " "
      
    elsif input_int.to_s.length >= 2 and @base_ten.include?(log)
      string_var += @base_ten[log]
    end
  end
  return string_var
  
  
  
end

 p integer_to_string(1)
# p integer_to_string(2)
# p integer_to_string(8)
 p integer_to_string(10)
 p integer_to_string(100)
 p integer_to_string(20)
# p integer_to_string(30)
p integer_to_string(25)
