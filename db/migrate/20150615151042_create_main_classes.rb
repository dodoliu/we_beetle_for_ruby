class CreateMainClasses < ActiveRecord::Migration
  def change
    create_table :main_classes do |t|
      t.string :name, null: false, default: '', limit: 50
      t.string :sid, null: false, default: '', limit: 50
      t.string :status, null: false, default: '0', limit: 1
      t.string :url, null: false, default: ''
      t.string :desc, default: '', limit: 500
      t.string :pic_url, null: false, default: '' 

      t.timestamps null: false
    end
    add_index :main_classes, :sid, unique: true
  end
end
