class CreateSubClasses < ActiveRecord::Migration
  def change
    create_table :sub_classes do |t|
      t.string :name
      t.string :sid
      t.integer :main_class_id
      t.boolean :status
      t.string :url
      t.string :pic_url
      t.string :desc, limit: 500

      t.timestamps null: false
    end
    add_index :sub_classes, :sid, unique: true
  end
end
