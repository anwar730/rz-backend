class EmployerSerializer < ActiveModel::Serializer
  attributes :id , :company_name,:username
  has_many :jobs, serializer: EmployerJobSerializer
end
