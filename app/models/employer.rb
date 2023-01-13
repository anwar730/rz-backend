class Employer < ApplicationRecord
    belongs_to :admin
    has_many :jobs
    has_many :job_applications, through: :jobs
    has_many :jobseekers, through: :matched_jobs

    has_many :job_applications
    has_many :matched_jobs
    has_many :jobseekers, through: :job_applications
    has_secure_password
    
    validates :username, :company_name, :admin_id, presence: true
    validates :email, :username, uniqueness: true
    validates :password, length: {in: 6...20}

end
