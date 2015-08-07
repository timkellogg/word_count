require('rspec')
require('word_count')

describe('String#count_words') do 
	it("handles an empty string") do 
		expect("".word_count()).to(eq({}))
	end


end