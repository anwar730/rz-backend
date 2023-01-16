class MatchedJobSerializer < ActiveModel::Serializer
  attributes :id, :jobseeker_id, :job_id, :employer_id
  belongs_to :job
  belongs_to :employer
  belongs_to :jobseeker
end
