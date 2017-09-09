class CreateImmunizations < ActiveRecord::Migration[5.1]
  def change
    create_table :immunizations do |t|
      t.string :name
      t.string :givenBy
      t.string :dosage
      t.datetime :givenDate

      t.timestamps
    end
  end
end
