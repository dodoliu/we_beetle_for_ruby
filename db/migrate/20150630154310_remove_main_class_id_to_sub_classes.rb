class RemoveMainClassIdToSubClasses < ActiveRecord::Migration
  def change
    remove_column :sub_classes, :main_class_id, :int
  end
end
