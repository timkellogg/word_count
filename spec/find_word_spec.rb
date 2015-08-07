require('rspec')
require('./lib/find_word')

describe('String#find_word') do 

	it('counts one particular one') do 
		expect('one'.find_word('one')).to(eq(1))
	end

	it('handles no matches') do 
		expect('something'.find_word('nothing')).to(eq(0))
	end

	it('handles an empty string') do 
		expect(''.find_word('one')).to(eq(0))
	end

	it('handles multiple occurances of a word in a string') do 
		expect('i need to know what you need to know'.find_word('need')).to(eq(2))
	end

end
