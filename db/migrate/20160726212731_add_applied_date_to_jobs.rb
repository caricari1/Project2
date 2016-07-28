class AddAppliedDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :applied_date, :date
  end
end
