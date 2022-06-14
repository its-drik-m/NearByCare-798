class Carer < ApplicationRecord
  REGION = %I[North South East West Center]
  SPECIALTY = ["Palliative care", "Surgery recovery treatment", "Rehabilitation care",
               "Assistance during treatments", " Assistance and providing care",
               "Accomodative care", "Injury recovery treatment"]
  has_one :user
  has_many :patients

  # thanks to Cloudinary
  has_one_attached :photo

  validates :region, presence: true, inclusion: { in: Carer::REGION }
  validates :specialty, presence: true, inclusion: { in: Carer::SPECIALTY }
end
