class JobApplicationSerializer < ActiveModel::Serializer
  attributes :id, :employer_id, :job_id, :jobseeker_id
  belongs_to :job
  belongs_to :employer
  belongs_to :jobseeker
end
