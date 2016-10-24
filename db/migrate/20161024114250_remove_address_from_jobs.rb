class RemoveAddressFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :address_id, :integer
  end
end
