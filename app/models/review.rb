class Review < ApplicationRecord
  RATING = [1, 2, 3, 4, 5]

  belongs_to :booking

  has_one :carer, through: :booking
  has_one :patient, through: :booking

  validates :comment, length: { minimum: 5 }
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
