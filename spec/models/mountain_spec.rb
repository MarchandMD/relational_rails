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
  end
end
