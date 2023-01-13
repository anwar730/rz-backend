class EmployerSerializer < ActiveModel::Serializer
  attributes :id , :company_name,:username, :email
  has_many :jobs, serializer: EmployerJobSerializer
end
