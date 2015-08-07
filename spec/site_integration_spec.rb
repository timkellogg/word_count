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
		fill_in('word_to_find', :with => 'the')
		expect(page).to have_css('highlighted')
	end
end