# As a visitor
# When I visit a Child Show page
# Then I see a link to update that Child "Update Child"
# When I click the link
# I am taken to '/child_table_name/:id/edit' where I see a form to edit the child's attributes:
# When I click the button to submit the form "Update Child"
# Then a `PATCH` request is sent to '/child_table_name/:id',
# the child's data is updated,
# and I am redirected to the Child Show page where I see the Child's updated information
require 'rails_helper'

RSpec.describe "Trail Update" do
  before(:each) do
    @mountain = Mountain.create!(name: 'Keystone', handicap_accessible: true, elevation: 5280)
    @mountain.trails.create!(name: 'Bunny Run', trail_open: true, elevation_drop: 50)
    @trail = @mountain.trails.last

  end

  it 'links to the edit page' do
    visit "/trails/#{@trail.id}"
    click_link("Update #{@trail.name}")
    expect(current_path).to eq("/trails/#{@trail.id}/edit")
  end

  it 'can edit the trail' do
    visit "/trails/#{@trail.id}/edit"

    fill_in "Name",	with: "sometext"
    select('true', from: 'trail_open')
    fill_in "Elevation drop",	with: "2000"
    click_button("Update #{@trail.name}")
    expect(current_path).to eq("/trails/#{@trail.id}")

    visit "/trails/#{@trail.id}"
    expect(page).to have_content('sometext')
    expect(page).to have_content('true')
    expect(page).to have_content('2000')
  end
end