class RemoveUserIdFromAttendance < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendances, :user_id, :string
    remove_column :attendances, :event_id, :string
  end
end
