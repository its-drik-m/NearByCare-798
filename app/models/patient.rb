class Patient < User
  CONDITIONS = ["Terminal illnesses", "Brain surgery", "Hip and knee replacements", "Complex fractures",
                "Neurological disorders", "Diabetes", "Back injury", "Spinal cord injury", "Alzheimer",
                "Dialysis", "Chronic illness", "Accident Injury Recovery", "Sports Injury Treatment"]
  belongs_to :user
  has_many :carers
  has_many :reviews, through: :bookings

  validates :address, presence: true
  validates :health_conditions, presence: true, inclusion: { in: Patient::CONDITIONS }
end
