class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :doctor, :specialty, :patient, :symptoms, :location, :appointment_notes, :need_insurance, :insurance_status, :insurance_approval, :insurance_notes
  has_one :user
end
