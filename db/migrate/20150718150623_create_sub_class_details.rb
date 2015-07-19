class CreateSubClassDetails < ActiveRecord::Migration
  def change
    create_table :sub_class_details do |t|
      t.string :name
      t.string :sid
      t.integer :sub_class_id
      t.string :status
      t.string :url
      t.string :desc, limit: 500
      t.string :pic_url

      t.timestamps null: false
    end
    add_index :sub_class_details, :sid, unique: true
  end
end
