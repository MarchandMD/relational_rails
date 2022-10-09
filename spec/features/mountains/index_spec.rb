require 'rails_helper'

RSpec.describe 'Mountains' do
  describe 'Mountains#index view' do
    it 'shows the name of each mountain' do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true)
      sleep(2)
      mountain_2 = Mountain.create!(name: 'breck peak 1', handicap_accessible: true)
      visit '/mountains'
      expect(page).to have_content(mountain_1.name)
      expect(page).to have_content(mountain_2.name)

    end

    it 'has a link to create new mountain' do
      visit '/mountains'

      expect(page).to have_link("New Mountain")

      click_link "New Mountain"

      expect(current_path).to eq("/mountains/new")
    end

  end
end
