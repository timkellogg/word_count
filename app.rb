require('sinatra')
require('./lib/word_count')
require('./lib/find_string')
require('sinatra/contrib')

get('/') do 
	erb(:index)
end

get('/results') do 

	text         			= params.fetch("text").word_count()
	string_to_find   	= params.fetch("string_to_find")

	@particular_word  = text.find_string(string_to_find)

	@total_words 			= text.values.inject(&:+)
	@counted_words  	= text.sort_by {|key, value| value }.reverse()
	erb(:results)
end