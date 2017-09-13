class CreateReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :referrals do |t|
      t.string :doctor
      t.datetime :startDate
      t.datetime :expirationDate
      t.integer :numberOfVisits

      t.timestamps
    end
  end
end
