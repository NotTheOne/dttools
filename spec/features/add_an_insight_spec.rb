require 'spec_helper'

feature 'adding an insight' do

	let(:insight) { FactoryGirl.create(:insight) }

	scenario 'user can add an insight to the matrix' do
		FactoryGirl.create(:insight)
		visit insights_path
		click_on 'Add Insight'

		fill_in 'Name', with: 'foo bar'
		click_on 'Create Insight'

		click_on 'Done'

		expect(page).to have_content('foo bar')
	end

	scenario 'displays error when name is blank' do
		visit new_insight_path
		click_on 'Create Insight'

		expect(page).to have_content("can't be blank")
	end

	scenario 'user can delete an insight from the matrix' do
		FactoryGirl.create(:insight)
		visit insights_path
		
		expect(page).to have_content('Roger')

		click_on 'Delete Insight'
		expect(page).to_not have_content('Roger')


	scenario 'user can edit an existing insight' do
		FactoryGirl.create(:insight)
		visit insights_path
		expect(page).to have_content('Roger')
		click_on 'Edit Insight'
		expect(page).to have_content('Steve')
	end
end





	
end