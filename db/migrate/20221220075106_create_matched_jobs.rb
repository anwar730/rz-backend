class CreateMatchedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :matched_jobs do |t|
      t.string :jobseeker
      t.string :job_title
      t.string :company_name
      t.integer :jobseeker_id
      t.integer :job_id
      t.integer :employer_id

      t.timestamps
    end
  end
end
