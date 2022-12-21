class Employer < ApplicationRecord
    belongs_to :admin
    has_many :jobs
    has_many :job_applications, through: :jobs
    has_many :jobseekers, through: :matched_jobs
end
