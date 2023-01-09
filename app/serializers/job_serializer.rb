class JobSerializer < ActiveModel::Serializer
  attributes :id , :company_name, :category, :job_title, :job_description, :responsibilities, :salary, :number_of_applicants

  belongs_to :employer
end
