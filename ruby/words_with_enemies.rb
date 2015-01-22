#George Horrell, 21.01.15
#Solution to [2015-01-19] Challenge #198 [Easy]
#Words with Enemies

input = [
  "because cause", "hello below", "hit miss", "rekt pwn", "combo jumbo",
  "critical optical", "isoenzyme apoenzyme", "tribesman brainstem",
  "blames nimble", "yakuza wizard", "longbow blowup"
]

def render_result(x_array,y_array,x_score,y_score) #function to display results of word_smash function
	print "[ " + x_array.join + " ] v.s. [ " + y_array.join + " ] < "
	case
	when x_score == y_score then print "It's a tie!"
	when x_score > y_score then print x_array.join + " wins by " + (x_score - y_score).to_s + " points!"
	when y_score > x_score then print y_array.join + " wins by " + (y_score - x_score).to_s + " points!"	
	end
	puts ""
end

def word_smash(string)
	array = string.split(" ") #split the input string into component words, then individual letters
	x_w = array[0]
	y_w = array[1]
	x_array = x_w.split("")
	y_array = y_w.split("")

	match_score = 0

	for i in x_array #check for matches
		if y_array.include?(i)
			match_score += 1
		end
	end

	x_score = x_array.length - match_score #subtract number of matches from number of letters in each word
	y_score = y_array.length - match_score

	render_result(x_array, y_array, x_score, y_score) #pass the result to render function
end

input.each do |line| #iterate over input array and run word_smash function
	word_smash(line)
end