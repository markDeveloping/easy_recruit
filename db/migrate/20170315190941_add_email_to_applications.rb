class AddEmailToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :email, :string
  end
end
