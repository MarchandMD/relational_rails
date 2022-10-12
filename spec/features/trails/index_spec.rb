require 'rails_helper'

RSpec.describe 'Mountains' do
  describe 'Trails#index view' do
    before(:each) do
      @mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 5280)
      @trail_1 = Trail.create!(name: 'bunny_run', trail_open: true, mountain_id: @mountain_1.id, elevation_drop: 50)
      @trail_2 = Trail.create!(name: 'schoolmarm', trail_open: true, mountain_id: @mountain_1.id, elevation_drop: 459)
      @trail_3 = Trail.create!(name: 'zipper', trail_open: false, mountain_id: @mountain_1.id, elevation_drop: 600)
    end

    it 'shows all the trail names' do
      visit '/trails'
      expect(page).to have_content(@trail_1.name)
      expect(page).to have_content(@trail_2.name)
      expect(page).to_not have_content(@trail_3.name)
    end

    it 'shows all the trails attributes' do
      visit '/trails'
      expect(page).to have_content(@trail_1.trail_open)
      expect(page).to have_content(@trail_1.elevation_drop)
    end

    it 'has links to update the trail' do
      visit '/trails'
      expect(page).to have_content("Update #{@trail_1.name}")
      click_link("Update #{@trail_1.name}")
      expect(current_path).to eq("/trails/#{@trail_1.id}/edit")
    end

    it 'has links to delete the trail' do
      visit '/trails'
      expect(page).to have_link("Delete #{@trail_1.name}")
      click_link("Delete #{@trail_1.name}")
      expect(page).not_to have_content(@trail_1.name)
    end
  end
end
