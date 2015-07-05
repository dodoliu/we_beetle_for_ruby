class AddMainClassesIdToSubClasses < ActiveRecord::Migration
  def change
    add_column :sub_classes, :main_classes_id, :int, defalut: ''
  end
end
