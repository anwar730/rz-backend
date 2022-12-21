class MatchedJob < ApplicationRecord
    belongs_to :job
    belongs_to :jobseeker
    belongs_to :employer
end
