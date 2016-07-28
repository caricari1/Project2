class AddOfferDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :offer_date, :date
  end
end
