class AddJobIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :job_id, :integer
  end
end
