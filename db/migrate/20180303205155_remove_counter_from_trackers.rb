class RemoveCounterFromTrackers < ActiveRecord::Migration
  def change
    remove_column :trackers, :Counter, :integer
  end
end
