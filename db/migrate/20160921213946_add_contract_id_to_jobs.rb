class AddContractIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :contract_id, :integer
  end
end
