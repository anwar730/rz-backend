class EmployerSerializer < ActiveModel::Serializer
  attributes :id , :company_name,:username,:role, :email
  has_many :jobs, serializer: EmployerJobSerializer
end
