class JobApplication < ApplicationRecord
    belongs_to :jobseeker
    belongs_to :job
    belongs_to :employer
end
