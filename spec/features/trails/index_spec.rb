require 'rails_helper'

RSpec.describe 'Mountains' do
  describe 'Trails#index view' do

    it 'shows all the trail names' do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 5280)
      trail_1 = Trail.create!(name: 'bunny_run', trail_open: true, mountain_id: mountain_1.id, elevation_drop: 50)
      trail_2 = Trail.create!(name: 'schoolmarm', trail_open: true, mountain_id: mountain_1.id, elevation_drop: 459)
      visit "/trails"
      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_2.name)
    end
  end
end
