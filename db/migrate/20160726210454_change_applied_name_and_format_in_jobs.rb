class ChangeAppliedNameAndFormatInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :applied, :date_applied
  end

end
