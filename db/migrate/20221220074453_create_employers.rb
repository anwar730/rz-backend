class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :username
      t.string :password
      t.string :email
      t.string :role
      t.boolean :isloggedin
      t.integer :admin_id

      t.timestamps
    end
  end
end
