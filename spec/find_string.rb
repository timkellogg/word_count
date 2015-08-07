require('rspec')
require('./lib/find_string')

describe('String#find_string') do 

	it('counts one particular one') do 
		expect('one'.find_string('one')).to(eq(1))
	end

	it('handles no matches') do 
		expect('something'.find_string('nothing')).to(eq(0))
	end

	it('handles an empty string') do 
		expect(''.find_string('one')).to(eq(0))
	end

	it('handles multiple occurances of a word in a string') do 
		expect('i need to know what you need to know'.find_string('need')).to(eq(2))
	end

	it('handles will not count odd characters') do 
		expect('characters? ?'.find_string('?')).to(eq(0))
	end

	it('handles searching for multiple words') do 
		expect('characters of the'.find_string('characters of the')).to(eq(1))
	end
end
