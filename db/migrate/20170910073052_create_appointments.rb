class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :examiner
      t.string :appointmentType
      t.string :appointmentStatus
      t.datetime :date
      t.string :street
      t.string :city
      t.string :postalCode
      t.string :notes

      t.timestamps
    end
  end
end
