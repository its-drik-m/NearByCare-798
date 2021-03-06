class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :carers
  has_many :patients

 # Added validations
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates_presence_of :phone_number

  enum role: %i[patient carer]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :patient
  end
end
