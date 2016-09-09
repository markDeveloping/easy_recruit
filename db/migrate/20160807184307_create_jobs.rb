class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :jobDescription
      t.text :personalSpec
      t.text :selectDetails
      t.string :contractType
      t.string :workingPattern
      t.date :closeDate
      t.date :testDate
      t.integer :salaryMin
      t.integer :salaryMax
      t.timestamps null: false
    end
  end
end
