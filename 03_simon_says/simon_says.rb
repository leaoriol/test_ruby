def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(*args)
	if args.last.is_a?(Fixnum)
		times = args.pop
		#puts times
	else
		times = 2
	end

	string = args.first

	final_string = ""
	i = 0
	while i < times - 1
		final_string += string + " "
		i += 1
	end

	return final_string + string
end

def start_of_word(*args)
	if args.last.is_a?(Fixnum)
		index = args.pop
	else
		index = 1
	end

	string = args.first
	return string[0...index]
end

def first_word(string)
	sentence = string.split(" ")
	return sentence[0]
end

def capitalize_if_needed(word, index)
	words_to_ignore = ["the", 'and', 'over']
	if index == 0
		return word.capitalize!
	elsif words_to_ignore.include? word
		return word
	end
	word.capitalize!	
end

def titleize(string)
	words_array = string.split
	new_string = words_array.each_with_index{|word, index| capitalize_if_needed(word, index)}.join(' ')
	return new_string
end


titleize("hwllo my name is lea and i am happy")
titleize("the cat and the dog are playing")
titleize("jaws")