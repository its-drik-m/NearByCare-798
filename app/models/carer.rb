class Carer < ApplicationRecord
  belongs_to :user
  has_many :patients

  # thanks to Cloudinary
  has_one_attached :photo

  validates :region, presence: true, inclusion: { in: %w[North South East West Center] }
  validates :specialty, presence: true, inclusion: { in: ["Palliative care", "Surgery recovery treatment", "Rehabilitation care",
                                                            "Assistance during treatments", " Assistance and providing care",
                                                            "Accomodative care", "Injury recovery treatment"] }
  include PgSearch::Model
  pg_search_scope :search_by_region_and_specialty,
    against: [ :region, :specialty ],
    using: {
      tsearch: { prefix: true }
    }
end
