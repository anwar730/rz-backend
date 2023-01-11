class MatchedJobSerializer < ActiveModel::Serializer
  attributes :id, :jobseeker_id, :job_id, :employer_id
  belongs_to :job
  belongs_to :employer
end
