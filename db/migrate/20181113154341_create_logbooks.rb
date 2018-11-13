class CreateLogbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :logbooks do |t|
      t.datetime :date_began
      t.integer :boat_id

      t.timestamps
    end
  end
end
