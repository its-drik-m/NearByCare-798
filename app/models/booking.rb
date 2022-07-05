class Booking < ApplicationRecord
  require 'twilio-ruby'
  belongs_to :carer
  belongs_to :patient
  has_many :reviews, dependent: :destroy

  validates :start_date, :end_date, presence: true
  # validate :date_cannot_be_in_the_past
  # validate :start_must_be_before_end_time

  # All bookings will be ordered by their start_time by default
  default_scope -> { order(:start_date) }

  before_create :set_room_name

  # callback ActiveRecord
  def set_room_name
    client = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])
    room = client.video.rooms.create(unique_name: "#{self.patient_id}_#{Time.now.to_i}")
    self.url_room = room.unique_name
  end

  def date
    "#{start_date.strftime('%I:%M %p')} - #{end_date.strftime('%I:%M %p')}"
  end

  def multi_days?
    (end_date.to_date - start_date.to_date).to_i >= 1
  end

  # def date_cannot_be_in_the_past
  #   if start_date.present? && start_date < Time.zone.now
  #     errors.add(:start_date, "can't be in the past")
  #   end

  #   if end_date.present? && end_date < Time.zone.now
  #     errors.add(:end_date, "can't be in the past")
  #   end
  # end

  # def start_must_be_before_end_time
  #   errors.add(:start_date, "must be before end time") unless
  #         start_date < end_date
  # end
end
