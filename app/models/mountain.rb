class Mountain < ApplicationRecord
  has_many :trails, dependent: :destroy

  def self.partial_match(input = '')
    where('name like ?', "%#{input}%")
  end
end
