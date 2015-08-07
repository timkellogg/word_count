class String
	define_method(:find_word) do |word_to_find|
		text_to_search_in = self 
		word_occurances = 0
		text_to_search_in.split(" ").each() do |word|
			if word == word_to_find
				word_occurances += 1 
			end 
		end
		puts word_occurances
		if word_occurances == 0
			0
		else  
			word_occurances
		end
	end
end