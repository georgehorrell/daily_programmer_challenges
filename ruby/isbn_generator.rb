#George Horrell, 21.01.15
#Solution to Easy Daily Programmer Challenge on /r/dailyprogrammer
#Random ISBN Generator

def rand_digit #generate random digit
	return rand(10)
end

def array_gen #generate array of 9 random digits 
	array = []
	for i in 0..9
		array << rand_digit
	end

	return array
end

def check_array (array) #check array to see if valid isbn, return true or false
	check_num = 0
	for i in 0..9
		check_num = check_num + (array[i]*(10 - i))
	end
	if check_num % 11 == 0
		return true
	else
		return false
	end
end

def render_isbn(array) #format the array into a string with dashes
	array.insert(1, "-")
	array.insert(6, "-")
	array.insert(11, "-")
	array.join
end

def valid_isbn_gen #generate a valid isbn

	isbn_array = array_gen

	while check_array(isbn_array) == false
		isbn_array = array_gen
	end

	return isbn_array
end

print render_isbn(valid_isbn_gen) #run