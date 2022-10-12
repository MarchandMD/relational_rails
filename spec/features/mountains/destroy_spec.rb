require 'rails_helper'

RSpec.describe 'Mountains#destroy' do
  it 'can delete the mountain from the index page and all associated trails' do
    mountain = Mountain.create!(name: 'Copper', handicap_accessible: true, elevation: 5280)
    visit "/mountains/#{mountain.id}"
    expect(page).to have_content("Delete #{mountain.name}")
    click_link("Delete #{mountain.name}")

    expect(current_path).to eq('/mountains')
    expect(page).to_not have_content("#{mountain.name}")
  end
end
