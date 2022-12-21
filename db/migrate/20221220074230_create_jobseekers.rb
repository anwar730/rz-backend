class CreateJobseekers < ActiveRecord::Migration[7.0]
  def change
    create_table :jobseekers do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :role
      t.integer :rating
      t.string :skills
      t.string :jobs_done
      t.boolean :isloggedin
      t.integer :admin_id

      t.timestamps
    end
  end
end
