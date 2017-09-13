class CreateMedications < ActiveRecord::Migration[5.1]
  def change
    create_table :medications do |t|
      t.string :type
      t.string :prescriber
      t.string :dose

      t.timestamps
    end
  end
end
