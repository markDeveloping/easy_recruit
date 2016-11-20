class AddGradeIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :grade_id, :integer
  end
end
