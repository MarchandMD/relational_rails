require 'rails_helper'

RSpec.describe 'mountain_trails#destroy' do
  it 'has links to delete the trail' do
    mountain = Mountain.create!(name: 'Copper', handicap_accessible: true, elevation: 5280)
    trail_1 = mountain.trails.create!(name: 'Bunny Run', trail_open: true, elevation_drop: 10)
    mountain.trails.create!(name: 'Zippy', trail_open: true, elevation_drop: 100)
    mountain.trails.create!(name: 'Quicksilver', trail_open: true, elevation_drop: 500)
    visit "/mountains/#{mountain.id}/trails"
    expect(page).to have_link("Delete #{trail_1.name}")
    click_link("Delete #{trail_1.name}")
    expect(page).not_to have_content(trail_1.name)
  end
end
