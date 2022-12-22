class Jobseeker < ApplicationRecord
    belongs_to :admin
    has_many :matched_jobs
    has_many :employers, through: :matched_jobs
    has_many :job_applications
    has_many :employers, through: :job_applications
end
