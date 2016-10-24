class AddTownToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :town_id, :integer
  end
end
