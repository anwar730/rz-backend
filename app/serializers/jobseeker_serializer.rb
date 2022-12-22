class JobseekerSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :skills, :jobs_done

  has_many :employers
end
