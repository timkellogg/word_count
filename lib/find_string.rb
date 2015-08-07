# class String
# 	define_method(:find_string) do |string_to_find|
# 		text_to_search_in = self.gsub(/[!.?]/, " ")

# 		string_occurances = 0


# 		text_to_search_in.split(" ").each() do |word|
# 			if word == string_to_find
# 				string_occurances += 1 
# 			end 
# 		end
# 		string_occurances == 0 ? 0 : string_occurances
# 	end
# end

class String
	define_method(:find_string) do |string_to_find|
		text_to_search_in = self.gsub(/[!.?]/, " ")
		string_occurances = text_to_search_in.scan(string_to_find).length()
		string_occurances == 0 ? 0 : string_occurances
	end
end
