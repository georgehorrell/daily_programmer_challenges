#George Horrell, 21.01.15
#Solution to [2014-12-19] Challenge #193 [Easy] Acronym Expander
#/r/dailyprogrammer
#Acronym Expander

wordlist = {
	"lol" => "laugh out loud",
	"dw" => "don't worry",
	"hf" => "have fun",
	"gg" => "good game",
	"brb" => "be right back",
	"g2g" => "got to go",
	"wtf" => "what the fuck",
	"wp" => "well played",
	"gl" => "good luck",
	"imo" => "in my opinion"
}

def expand(string, dict)
	array = string.split(" ")

	for i in 0..(array.length - 1)
		if dict.include?(array[i])
			array[i] = dict[array[i]]
		end
	end

	return array.join(" ")
end

print expand("lol gl hf", wordlist)