class AddCheckDateToTracker < ActiveRecord::Migration
  def change
    add_column :trackers, :date_check, :date
  end
end
