require('sinatra')
require('./lib/word_count')
require('sinatra/contrib')

get('/') do 
	erb(:index)
end

get('/results') do 
	@output = params.fetch("text").word_count().sort_by {|key, value| value }.reverse()
	erb(:results)
end