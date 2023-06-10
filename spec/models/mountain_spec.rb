require 'rails_helper'

RSpec.describe Mountain, type: :model do
  describe 'relationships' do
    it { should have_many :trails }
  end

  describe 'class methods' do
    describe '#partial_match' do
      it 'matches a partial match' do
        @mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 5280)
        search_results = Mountain.partial_match('keys')
        expect(search_results[0]).to eq(@mountain_1)
      end
    end

    describe '#exact_match' do
      it 'matches an exact match' do
        @mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 5280)
        search_results = Mountain.exact_match('keystone')
        expect(search_results[0]).to eq(@mountain_1)
      end
    end
  end

  describe 'instance methods' do
    describe '#trail_count' do
      it 'returns amount of trails associated with mountain' do
        @mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true, elevation: 5280)
        @mountain_1.trails.create!(name: 'awesome', trail_open: true, elevation_drop: 10)
        @mountain_2 = Mountain.create!(name: 'eldora', handicap_accessible: true, elevation: 10000)
        @mountain_2.trails.create!(name: 'not so awesome', trail_open: true, elevation_drop: 2000)
        @mountain_2.trails.create!(name: 'zippy', trail_open: true, elevation_drop: 50)
        expect(@mountain_1.trail_count).to eq(1)
        expect(@mountain_2.trail_count).to eq(2)
      end
    end
  end
end
