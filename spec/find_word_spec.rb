require('rspec')
require('./lib/find_word')

describe('String#find_word') do 

	it('counts one particular one') do 
		expect('one'.find_word('one')).to(eq(1))
	end

end