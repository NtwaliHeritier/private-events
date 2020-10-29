class User < ApplicationRecord
    has_many :created_events, class_name: "Event", foreign_key: "creator_id"
    has_many :attendances, foreign_key: "user_attended_id", class_name: "Attendance"
    has_many :attended_events, through: :attendances
    # has_many :invited_users, foreign_key: "invitor_id", class_name: "User"
    # belongs_to :invitor, class_name: "User"
end
