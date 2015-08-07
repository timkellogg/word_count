require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application 

describe('using the site without passing in options', { :type => :feature }) do 

	it('allows the user to enter text and then shows the breakdown of different words used') do 
		visit('/')
		fill_in('text', :with => "It's the end of the world!")
		click_button('submit')
		expect(page).to have_content("it's 1 the 2 of 1 world 1")
	end
end