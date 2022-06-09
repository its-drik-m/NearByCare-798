class Patient < ApplicationRecord
  belongs_to :user
  has_many :carers
  has_many :reviews, through: :bookings

end
