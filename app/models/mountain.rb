class Mountain < ApplicationRecord
  has_many :trails, dependent: :destroy

  before_create { |mountain| mountain.name.capitalize }

end
