class Carer < ApplicationRecord
  REGION = %w[North South East West Center]
  SPECIALTY = ["Palliative Care", "Surgery Recovery Treatment", "Rehabilitation Care",
               "Assistance During Treatments", "Assistance and Providing Care",
               "Accomodative Care", "Injury Recovery Treatment"]
  has_one :user
  has_many :bookings, dependent: :destroy
  has_many :patients, through: :bookings
  has_many :reviews, through: :bookings

  # thanks to Cloudinary
  has_one_attached :photo

  validates :region, presence: true, inclusion: { in: REGION }
end
