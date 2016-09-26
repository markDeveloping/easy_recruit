class AddStatusIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :status_id, :integer
  end
end
