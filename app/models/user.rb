class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :carers
  has_many :patients

    # thanks to Cloudinary
    # has_one_attached :photo

    # Added validations
    validates :last_name, presence: true, uniqueness: true
    validates :first_name, presence: true, uniqueness: true
    validates :phone_number, presence: true

end
