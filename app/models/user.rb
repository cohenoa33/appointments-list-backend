class User < ApplicationRecord
    has_secure_password
    has_many :appointments

 


    validates :email, uniqueness: { case_sensitive: true }, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :password, :presence => true, :confirmation => true, :length => {:within => 6..40}, format: { with: /\A(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/x }

end
