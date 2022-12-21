class Jobseeker < ApplicationRecord
    belongs_to :admin
    has_many :employers, through: :matched_jobs
end
