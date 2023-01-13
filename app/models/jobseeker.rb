class Jobseeker < ApplicationRecord
    belongs_to :admin
    has_many :matched_jobs
    has_many :job_applications
    has_many :employers, through: :job_applications  
    has_many :employers, through: :matched_jobs
    has_secure_password

    validates  :username,   :admin_id, presence: true
    validates :email, :username, uniqueness: true
    validates :password, length: {in: 6...20}
end
