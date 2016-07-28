class ChangeSalaryFormatInJobs < ActiveRecord::Migration
  def up
    change_column :jobs, :salary, 'integer USING CAST("salary" AS integer)'
  end

  def down
    change_column :jobs, :salary, :string
  end

end
