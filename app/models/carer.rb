class Carer < ApplicationRecord
  REGION = %w[North South East West Center]
  SPECIALTY = ["Palliative care", "Surgery recovery treatment", "Rehabilitation care",
               "Assistance during treatments", " Assistance and providing care",
               "Accomodative care", "Injury recovery treatment"]
  has_one :user
  has_many :bookings
  has_many :patients, through: :bookings

    # geocoder configuration for patient
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?

  # thanks to Cloudinary
  has_one_attached :photo

  validates :region, presence: true, inclusion: { in: REGION }
end
