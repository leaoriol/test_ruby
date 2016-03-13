def translate(string)
	vowel = ['a','e','i','o','u','y']
	words = string.split
	words.each do |letter|
		if vowel.include? letter[0,1]
			letter << "ay"
		else
			prev_letter = ""
			until vowel.include? letter[0,1]
				letter << ("#{letter[0,1]}")
				prev_letter = ("#{letter[0,1]}")
				letter[0,1] = ""
			end
			if prev_letter == "q" && letter[0,1] == "u"
				letter << ("#{letter[0,1]}")
				letter[0,1] = ""
			end
			letter << "ay"
		end
	end
	words.join(" ")
end

#translate("apple")