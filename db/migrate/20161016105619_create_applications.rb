class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :last_name
      t.integer :job_id
      t.integer :app_status_id

      t.timestamps null: false
    end
  end
end
