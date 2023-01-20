# As a visitor
# When I visit a parent show page
# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info
require 'rails_helper'

RSpec.describe 'Mountains#edit' do
  before(:each) do
    @mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 5280)
  end
  it 'has a link on the mountains#show page' do

    visit "/mountains/#{@mountain_1.id}"
    expect(page).to have_link("Update Mountain")
  end

  it 'navigates to the edit page' do
    visit "/mountains/#{@mountain_1.id}"
    click_link("Update Mountain")

    expect(current_path).to eq("/mountains/#{@mountain_1.id}/edit")
  end

  xit 'can be edited and redirects to the updated parents show page' do
    visit "/mountains/#{@mountain_1.id}/edit"

    fill_in "Name",	with: "Keystonez"
    click_button("Update Mountain")

    expect(current_path).to eq("/mountains/#{@mountain_1.id}")
    expect(page).to have_content("Keystonez")
  end
end
