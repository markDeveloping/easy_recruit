class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
