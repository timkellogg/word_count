class String

	define_method(:word_count) do 
		words = self.split("")

		word_count = {}

		words.each() do |word| 

			if !word_count.keys().include?(word)
				word_count.store(word, 1)
			else 
				word_count[word] += 1
			end
		end

		word_count 

	end
end