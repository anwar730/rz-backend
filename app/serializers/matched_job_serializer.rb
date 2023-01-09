class MatchedJobSerializer < ActiveModel::Serializer
  attributes :id, :jobseeker_id, :job_id, :employer_id
end
