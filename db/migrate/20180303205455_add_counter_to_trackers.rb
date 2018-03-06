class AddCounterToTrackers < ActiveRecord::Migration
  def change
    add_column :trackers, :counter, :integer, :null => false, :default => 0
  end
end
