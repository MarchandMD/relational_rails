require 'rails_helper'

RSpec.describe 'Trails#destroy' do
  it 'can delete the trail from the index page' do
    mountain = Mountain.create!(name: 'Copper', handicap_accessible: true, elevation: 5280)
    trail = mountain.trails.create!(name: 'Here and Gone', trail_open: true, elevation_drop: 40)
    visit "/trails/#{trail.id}"
    expect(page).to have_content("Delete #{trail.name}")
    click_link("Delete #{trail.name}")

    expect(current_path).to eq('/trails')
    expect(page).to_not have_content("#{mountain.name}")
  end
end
