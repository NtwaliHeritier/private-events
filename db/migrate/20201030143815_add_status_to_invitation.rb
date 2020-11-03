class AddStatusToInvitation < ActiveRecord::Migration[6.0]
  def change
    add_column :invitations, :status, :boolean
  end
end
