class Job < ApplicationRecord
    belongs_to :employer
    has_many :job_applications
    has_many :matched_jobs
end
