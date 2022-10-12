# As a visitor
# When I visit the Parent's children Index Page
# Then I see a link to sort children in alphabetical order
# When I click on the link
# I'm taken back to the Parent's children Index Page where I see all of the parent's children in alphabetical order
require 'rails_helper'

RSpec.describe 'Mountain Trails Index' do
  before(:each) do
    @mountain = Mountain.create!(name: 'Buttermilk', handicap_accessible: true, elevation: 5280)
    @trail_1 = @mountain.trails.create!(name: 'Zephyr Run', trail_open: true, elevation_drop: 300)
    @mountain.trails.create!(name: 'Quicksilver', trail_open: true, elevation_drop: 200)
    @mountain.trails.create!(name: 'Bunny Run', trail_open: true, elevation_drop: 50)
  end

  it 'has a link to edit the trail' do
    visit "/mountains/#{@mountain.id}/trails"
    expect(page).to have_content("Edit #{@trail_1.name}")
    click_link("Edit #{@trail_1.name}")
    expect(current_path).to eq("/mountains/#{@mountain.id}/trails/#{@trail_1.id}/edit")
  end

  it 'has a link to sort trails alphabetically' do
    visit "/mountains/#{@mountain.id}/trails"
    click_link('Sort Trails')
  end

  it 'displays records over a given threshold' do
    visit "mountains/#{@mountain.id}/trails"
    fill_in 'threshold',	with: 199
    click_button('Only return records with more than number feet of elevation drop')
    expect(current_path).to eq("/mountains/#{@mountain.id}/trails")
    expect(page).not_to have_content('Bunny Run')
  end
end
