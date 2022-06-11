class Carer < ApplicationRecord
  belongs_to :user
  has_many :patients

  # thanks to Cloudinary
  has_one_attached :photo

  validates :region, presence: true, inclusion: { in: %w[North South East West Center] }
  validates :specialty, presence: true, inclusion: { in: ["Palliative care", "Surgery recovery treatment", "Rehabilitation care",
                                                            "Assistance during treatments", " Assistance and providing care",
                                                            "Accomodative care", "Injury recovery treatment"] }
end
