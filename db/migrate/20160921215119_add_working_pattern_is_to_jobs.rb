class AddWorkingPatternIsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :work_pattern_id, :integer
  end
end
