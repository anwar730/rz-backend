class CreateMatchedJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :matched_jobs do |t|
      t.integer :jobseeker_id
      t.integer :job_id
      t.integer :employer_id

      t.timestamps
    end
  end
end
