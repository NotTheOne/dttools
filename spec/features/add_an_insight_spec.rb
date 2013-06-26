require 'spec_helper'

feature 'adding an insight' do

	scenario 'user can add an insight to the matrix' do
		visit root_path
		click_on 'Add Insight'

		fill_in 'Name', with: 'foo bar'
		click_on 'Create Insight'

		click_on 'Done'

		expect(page).to have_content('foo bar')
	end
	
end