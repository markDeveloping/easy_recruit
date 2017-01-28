class RemovecontractTypeFromJobs < ActiveRecord::Migration
  def change
  remove_column :jobs, :contractType, :string
  end
end
