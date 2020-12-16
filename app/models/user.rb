class User < ApplicationRecord
    has_secure_password
    has_many :appointments

    validates :email, uniqueness: { case_sensitive: false }, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


end
