class Patient < ApplicationRecord
  CONDITIONS = ["Terminal illnesses", "Brain surgery", "Hip and knee replacements", "Complex fractures",
                "Neurological disorders", "Diabetes", "Back injury", "Spinal cord injury", "Alzheimer",
                "Dialysis", "Chronic illness", "Accident Injury Recovery", "Sports Injury Treatment"]
  has_one :user
  has_many :bookings, dependent: :destroy
  has_many :carers, through: :bookings
  has_many :reviews, through: :bookings

  validates :address, presence: true
  # validates :health_conditions, inclusion: CONDITIONS
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
