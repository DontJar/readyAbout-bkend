class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :start_date
      t.string :start_point
      t.string :destination
      t.integer :user_id

      t.timestamps
    end
  end
end
