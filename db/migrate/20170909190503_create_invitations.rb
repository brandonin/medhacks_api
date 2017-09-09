class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.string :auth_token

      t.timestamps
    end
    add_index :invitations, :auth_token, unique: true
  end
end
