require('sinatra')
require('./lib/word_count')
require('./lib/find_word')
require('sinatra/contrib')

get('/') do 
	erb(:index)
end

get('/results') do 

	text         		= params.fetch("text").word_count()
	particular_word = params.fetch("word_to_find")

	@total_words 		= text.values.inject(&:+)
	@counted_words  = text.sort_by {|key, value| value }.reverse()
	erb(:results)
end