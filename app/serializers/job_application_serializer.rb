class JobApplicationSerializer < ActiveModel::Serializer
  attributes :id, :employer_id, :job_id, :jobseeker_id
end
