class String
	define_method(:find_string) do |string_to_find|
		text_to_search_in = self.gsub(/[!.?]/, " ")
		string_occurances = text_to_search_in.scan(string_to_find).length()
		string_occurances == 0 ? 0 : string_occurances
	end
end
