class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name ,:email
  has_many :employers
  has_many :jobseekers
end
