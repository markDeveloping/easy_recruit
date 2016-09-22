class RemoveCloseDateFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :closeDate, :string
  end
end
