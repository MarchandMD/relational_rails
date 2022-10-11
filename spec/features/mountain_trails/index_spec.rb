
# As a visitor
# When I visit the Parent's children Index Page
# Then I see a link to sort children in alphabetical order
# When I click on the link
# I'm taken back to the Parent's children Index Page where I see all of the parent's children in alphabetical order
require 'rails_helper'

RSpec.describe 'Mountain Trails Index' do
  it 'has a link to sort trails alphabetically' do
    mountain = Mountain.create!(name: 'Buttermilk', handicap_accessible: true, elevation: 5280)
    mountain.trails.create!(name: 'Zephyr Run', trail_open: true, elevation_drop: 300)
    mountain.trails.create!(name: 'Quicksilver', trail_open: true, elevation_drop: 200)
    mountain.trails.create!(name: 'Bunny Run', trail_open: true, elevation_drop: 50)

    visit "/mountains/#{mountain.id}/trails"
    click_link("Sort Trails")
  end

end