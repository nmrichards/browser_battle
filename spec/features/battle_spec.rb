require 'spec_helper'

feature 'Battle' do
	scenario "Player submits their name" do
		visit('/')
		fill_in('name1', with:"Ollie")
		fill_in('name2', with:"Chris")
		click_button('Submit')
		expect(page).to have_text("Hey Ollie, hey Chris! Welcome to the Battle...")
	end
end
