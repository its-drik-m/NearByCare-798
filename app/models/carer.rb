class Carer < ApplicationRecord
  REGION = %w[North South East West Center]
  SPECIALTY = ["Palliative care", "Surgery recovery treatment", "Rehabilitation care",
               "Assistance during treatments", " Assistance and providing care",
               "Accomodative care", "Injury recovery treatment"]
  has_one :user
  has_many :patients

  # thanks to Cloudinary
  has_one_attached :photo

  validates :region, presence: true, inclusion: { in: REGION, presence: true }
  validates :specialty, inclusion: { in: SPECIALTY }
end
