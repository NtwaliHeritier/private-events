class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendances, foreign_key: "attended_event_id", class_name: "Attendance"
  has_many :user_attendeds, through: :attendances
end
