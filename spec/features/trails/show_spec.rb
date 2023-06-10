require 'rails_helper'

RSpec.describe 'Trails' do
  describe 'Trails#show' do
    it 'shows the specific trail and its attributes' do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 10000)
      trail_1 = Trail.create!(name: 'bunny run', trail_open: true, mountain_id: mountain_1.id, elevation_drop: 50)
      trail_2 = Trail.create!(name: 'schoolmarm', trail_open: true, mountain_id: mountain_1.id, elevation_drop: 275)
      visit "/trails/#{trail_1.id}"

      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_1.trail_open)
      visit "/trails/#{trail_2.id}"

      expect(page).to have_content(trail_2.name)
      expect(page).to have_content(trail_2.trail_open)
    end
  end
end
