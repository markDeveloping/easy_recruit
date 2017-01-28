class RemoveWorkingPatternFromJobs < ActiveRecord::Migration
  def change
  	remove_column :jobs, :workingPattern, :string
  end
end
