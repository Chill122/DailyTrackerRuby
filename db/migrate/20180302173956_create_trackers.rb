class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.integer :Counter
      t.string :Name

      t.timestamps null: false
    end
  end
end
