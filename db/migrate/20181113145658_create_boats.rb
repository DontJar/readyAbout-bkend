class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :length
      t.string :home_port
      t.integer :user_id

      t.timestamps
    end
  end
end
