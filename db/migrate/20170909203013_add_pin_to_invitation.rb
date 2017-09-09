class AddPinToInvitation < ActiveRecord::Migration[5.1]
  def change
    add_column :invitations, :pin, :string
  end
end
