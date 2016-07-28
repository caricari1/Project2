class ChangeLocationNameInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :location, :city
  end
end
