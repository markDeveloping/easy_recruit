class RemoveTestDateFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :testDate, :date
  end
end
