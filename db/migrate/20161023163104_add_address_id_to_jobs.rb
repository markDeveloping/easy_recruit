class AddAddressIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :address_id, :integer
  end
end
