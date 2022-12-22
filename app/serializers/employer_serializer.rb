class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :company_name

  has_many :jobs, serializer: EmployerJobSerializer
end
