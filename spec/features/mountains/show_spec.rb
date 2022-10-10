require 'rails_helper'

RSpec.describe 'Mountains' do
  describe 'Mountains#show view' do

    it 'shows the mountain name and attributes' do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true)
      mountain_2 = Mountain.create!(name: 'breck peak 1', handicap_accessible: true)
      visit "/mountains/#{mountain_1.id}"
      expect(page).to have_content(mountain_1.name)
      expect(page).to have_content(mountain_1.handicap_accessible)
      expect(page).to have_content(mountain_1.id)
      expect(page).to have_content(mountain_1.created_at)
      expect(page).to have_content(mountain_1.updated_at)
      # expect(page).to have_content(mountain_2.name)
      visit "/mountains/#{mountain_2.id}"
      expect(page).to have_content(mountain_2.name)
      expect(page).to have_content(mountain_2.handicap_accessible)
      expect(page).to have_content(mountain_2.id)
      expect(page).to have_content(mountain_2.created_at)
      expect(page).to have_content(mountain_2.updated_at)
    end

    it "displays the count of number of trails associated" do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 5280)
      mountain_1.trails.create!(name: 'bunny run', trail_open: true, elevation_drop: 50)
      mountain_1.trails.create!(name: 'schoolmarm', trail_open: true, elevation_drop: 500)

      visit "/mountains/#{mountain_1.id}"

      expect(page).to have_content("Number of trails: #{mountain_1.trails.count}")

      mountain_2 = Mountain.create!(name: 'breck peak 1', handicap_accessible: true, elevation: 5280)
      mountain_2.trails.create!(name: 'gold run', trail_open: true, elevation_drop: 100)
      mountain_2.trails.create!(name: 'zippys revenge', trail_open: true, elevation_drop: 201)

      visit "/mountains/#{mountain_2.id}"

      expect(page).to have_content("Number of trails: #{mountain_2.trails.count}")
      save_and_open_page
    end
  end
end
