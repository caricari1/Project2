class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :organization
      t.string :location
      t.string :salary
      t.text :description
      t.date :date_posted
      t.date :application_deadline
      t.boolean :applied
      t.boolean :interview
      t.boolean :offer
      t.date :other_deadline
      t.text :notes
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
