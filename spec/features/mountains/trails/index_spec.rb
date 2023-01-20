require 'rails_helper'

RSpec.describe 'Mountains-Trails AssociationProxy Index' do
  describe 'Mountains Trails Index' do
    xit "displays each Trail associated with a Mountain, and it's attributes" do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true)
      trail_1 = mountain_1.trails.create!(name: 'bunny run', trail_open: true)
      trail_2 = mountain_1.trails.create!(name: 'schoolmarm', trail_open: true)

      mountain_2 = Mountain.create!(name: 'breck peak 1', handicap_accessible: true)
      trail_3 = mountain_2.trails.create!(name: 'whistler gulch', trail_open: true)
      trail_4 = mountain_2.trails.create!(name: "gold run", trail_open: true)

      visit "/mountains/#{mountain_1.id}/trails"
      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_1.trail_open)
      expect(page).to have_content(trail_2.name)
      expect(page).to have_content(trail_2.trail_open)

      visit "/mountains/#{mountain_2.id}/trails"
      expect(page).to have_content(trail_3.name)
      expect(page).to have_content(trail_3.trail_open)
      expect(page).to have_content(trail_4.name)
      expect(page).to have_content(trail_4.trail_open)

    end

  end

end
