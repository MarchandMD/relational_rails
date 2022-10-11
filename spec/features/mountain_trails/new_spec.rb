
# As a visitor
# When I visit a Parent Children Index page
# Then I see a link to add a new adoptable child for that parent "Create Child"
# When I click the link
# I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
# When I fill in the form with the child's attributes:
# And I click the button "Create Child"
# Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
# a new child object/row is created for that parent,
# and I am redirected to the Parent Childs Index page where I can see the new child listed

require 'rails_helper'

RSpec.describe "Mountain Trail Creation" do
  before(:each) do
    @mountain = Mountain.create!(name: 'Keystone', handicap_accessible: true, elevation: 5280)
    @mountain.trails.create!(name: 'bunny run', trail_open: true, elevation_drop: 50)
  end

  it 'is accessible via a link from the Mountain-Trail Index' do
    visit "/mountains/#{@mountain.id}/trails"
    click_link("Add Trail to #{@mountain.name}")
    expect(current_path).to eq("/mountains/#{@mountain.id}/trails/new")
  end

  it 'creates a new trail and redirects to the Mountain Trail index' do
    visit "/mountains/#{@mountain.id}/trails/new"
    fill_in "Name",	with: "Whirl-a-gig"
    select('false', from: 'trail_open')
    fill_in "Elevation drop",	with: "2"
    click_button("Create New Trail for #{@mountain.name}")
    expect(current_path).to eq("/mountains/#{@mountain.id}/trails")

    visit "/mountains/#{@mountain.id}/trails/"
    expect(page).to have_content("Whirl-a-gig")
  end
end