class RemoveLocationFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :country_id, :integer
    remove_column :jobs, :town_id, :integer
    remove_column :jobs, :region_id, :integer
  end
end
