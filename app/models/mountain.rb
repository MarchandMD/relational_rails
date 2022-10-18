class Mountain < ApplicationRecord
  has_many :trails, dependent: :destroy


  def trail_count
    trails.count
  end

  def self.partial_match(input = '')
    where('name like ?', "%#{input}%")
  end

  def self.exact_match(input = '')
    where(name: input)
  end
end
