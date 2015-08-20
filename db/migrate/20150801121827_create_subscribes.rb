class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :contact
      t.string :information
      t.date :server_date
      t.string :house_type
      t.string :housea_ddress
      t.string :floor_area
      t.string :style
      t.string :memo
      t.string :status

      t.timestamps null: false
    end
  end
end
