class CreateAccessJobs < ActiveRecord::Migration
  def change
    create_table :access_jobs do |t|
      t.integer :job_id
      t.integer :user_id
    end
    add_index :access_jobs, :job_id
    add_index :access_jobs, :user_id
  end
end
