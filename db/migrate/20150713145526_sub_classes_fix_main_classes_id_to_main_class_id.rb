class SubClassesFixMainClassesIdToMainClassId < ActiveRecord::Migration
  def change
  	rename_column :sub_classes, :main_classes_id, :main_class_id
  end
end
