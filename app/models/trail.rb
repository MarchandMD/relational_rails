class Trail < ApplicationRecord
  belongs_to :mountain
  # validates :name, presence: true
end
