class JobseekerSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :skills, :jobs_done, :role, :email
  has_many :employers
end
