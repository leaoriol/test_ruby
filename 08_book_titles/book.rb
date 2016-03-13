class Book 
	attr_accessor :title

	def capitalize_if_needed(word, index)
		words_to_ignore = ["the", 'and', 'over', 'in', 'of', 'a', 'an']
		if index == 0
			return word.capitalize!
		elsif words_to_ignore.include? word
			return word
		end
		word.capitalize!
	end

	def title= (title)
		@title = title.split.each_with_index{|word, index| capitalize_if_needed(word, index)}.join(' ')
	end
end
