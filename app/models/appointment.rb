class Appointment < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
  validates :doctor, presence: true
  validates :patient, presence: true
end
