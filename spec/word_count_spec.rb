require('rspec')
require('word_count')

describe('String#count_words') do 
	it("handles an empty string") do 
		expect("".word_count()).to(eq({}))
	end

	it("handles one word") do 
		expect("word".word_count()).to(eq({"word" => 1}))
	end

	it("handles multiple words") do 
		expect("several words here".word_count()).to(eq({"several" => 1, "words" => 1, "here" => 1}))
	end

	it('handles several appreances of a word') do 
		expect('many many times'.word_count()).to(eq({"many" => 2, "times" => 1}))
	end

	it('handles several appearances of several words') do 
		expect('many many times we say times times times'.word_count()).to(eq({"many" => 2, "times" => 4, "we" => 1, "say" => 1}))
	end
end