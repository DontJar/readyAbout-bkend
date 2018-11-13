class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.datetime :entry_date
      t.string :noon_location
      t.string :narrative
      t.string :weather
      t.string :fuel_consumed
      t.integer :logbook_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
