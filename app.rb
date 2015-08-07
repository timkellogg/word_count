require('sinatra')
require('./lib/word_count')
require('./lib/find_string')
require('sinatra/contrib')

get('/') do 
	erb(:index)
end

get('/results') do 
	text         				= params.fetch("text")
	@string_to_find  		= params.fetch("string_to_find")

	@num_of_occurances  = text.find_string(@string_to_find)

	@total_words 				= text.word_count().values.inject(&:+)
	@counted_words  		= text.word_count().sort_by {|key, value| value }.reverse()
	erb(:results)
end