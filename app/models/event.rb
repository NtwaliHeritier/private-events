class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true

  belongs_to :creator, class_name: "User"
  has_many :attendances, foreign_key: "attended_event_id", class_name: "Attendance"
  has_many :user_attendeds, through: :attendances

  has_many :invitations

  scope :past, -> {where("start_date<?", Date.today)}
  scope :future, -> {where("start_date>?", Date.today)}
end
