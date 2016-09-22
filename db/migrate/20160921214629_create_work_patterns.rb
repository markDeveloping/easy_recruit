class CreateWorkPatterns < ActiveRecord::Migration
  def change
    create_table :work_patterns do |t|
      t.string :working_pattern

      t.timestamps null: false
    end
  end
end
