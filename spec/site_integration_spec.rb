require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application 

describe('using the site without passing in a word to be counted', { :type => :feature }) do 

	it('allows the user to enter text and then shows the breakdown of different words used') do 
		visit('/')
		fill_in('text', :with => "It's the end of the world!")
		click_button('submit')
		expect(page).to have_css('a.btn')
		expect(page).to have_content("1 the 2 33% 2 end 1 16% 3 of 1 16% 4 world 1 16% 5 it's 1 16%")
	end
end

describe('using the site passing in a word to be counted', { :type => :feature }) do 
	it('allows the user to enter text and then shows how many times a given word occurs') do 
		visit('/')
		fill_in('text', :with => "It's the end of the world!")
		fill_in('string_to_find', :with => 'the')
		click_button('submit')
		expect(page).to have_css('div#found_string')
	end
end

describe('using the site without passing in any text', { :type => :feature }) do 
	it('should throw an error and prevent the user from reaching the results page') do 
		visit('/results')
		expect(page).to have_content('Text Analyzer')
	end
end