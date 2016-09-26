class AddDepartmentIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :department_id, :integer
  end
end
