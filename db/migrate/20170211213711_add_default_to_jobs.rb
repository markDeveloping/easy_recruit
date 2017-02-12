class AddDefaultToJobs < ActiveRecord::Migration
  def change
  	change_column_default :jobs, :status_id , 1
  end
end
