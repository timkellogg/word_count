class String
	define_method(:find_word) do |word_to_find|
		text_to_search_in = self 
		count = 0
		text_to_search_in.split(" ").each() do |word|
			if word == word_to_find
				count += 1 
			end 
		end
		count 
	end
end