# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# User.create(
#   email: "t@tmail.com",
#   password: '123',
#   password_confirmation: '123'
# )


Appointment.create(
    date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    time: "10:00",
    doctor: Faker::TvShows::BigBangTheory.character,
    specialty: Faker::Science.element,
    patient: Faker::TvShows::RuPaul.queen,
    symptoms: Faker::TvShows::BigBangTheory.quote,
    location: "Hospital x",
    appointment_notes: Faker::TvShows::BigBangTheory.quote,
   need_insurance: true,
    insurance_status: "waiting for payment",
   insurance_notes: Faker::TvShows::BigBangTheory.quote,
user_id: 1
)