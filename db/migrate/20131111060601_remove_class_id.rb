class RemoveClassId < ActiveRecord::Migration
  def change
    remove_column :orders, :class_id
  end
end
