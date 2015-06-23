class AddPositionToMainClass < ActiveRecord::Migration
  def change
    add_column :main_classes, :position, :string, default: '', limit: 1
  end
end
