class AddForeignKeyToAttendance < ActiveRecord::Migration[6.0]
  def change
    add_reference :attendances, :user_attended, references: :users, index: true
    add_foreign_key :attendances, :users, column: :user_attended_id

    add_reference :attendances, :attended_event, references: :users, index: true
    add_foreign_key :attendances, :users, column: :attended_event_id
  end
end
