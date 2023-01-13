class Admin < ApplicationRecord
    has_secure_password
    validates  :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, length: {in: 6...20}
    has_many :employers
    has_many :jobseekers
end
