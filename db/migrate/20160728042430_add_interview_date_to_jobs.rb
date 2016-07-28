class AddInterviewDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :interview_date, :date
  end
end
