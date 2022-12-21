class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :category
      t.string :job_title
      t.string :job_description
      t.string :responsibilities
      t.integer :salary
      t.string :status
      t.integer :number_of_applicants

      t.timestamps
    end
  end
end
