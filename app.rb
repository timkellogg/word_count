require('sinatra')
require('./lib/find_string.rb')
require('./lib/word_count.rb')
require('sinatra/contrib')

get('/') do 
	erb(:index)
end

get('/results') do 
	begin 
		@text               = params.fetch("text")
		@string_to_find     = params.fetch("string_to_find")
		@num_of_occurances  = @text.find_string(@string_to_find)
		@total_words        = @text.word_count().values.inject(&:+)
		@counted_words      = @text.word_count().sort_by {|key, value| value }.reverse()
		erb(:results)
	rescue => e  
		erb(:index)
	end 
end

get('/*') do 
	erb(:index)
end