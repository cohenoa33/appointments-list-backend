class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.string :doctor
      t.string :specialty
      t.string :patient
      t.string :symptoms
      t.string :location
      t.text :appointment_notes
      t.boolean :need_insurance
      t.string :insurance_status
      t.boolean :insurance_approval
      t.text :insurance_notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
