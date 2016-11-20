class AddGradeEquivalentToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :grade_equivalent, :string
  end
end
