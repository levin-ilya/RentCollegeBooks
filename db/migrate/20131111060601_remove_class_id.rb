class RemoveClassId < ActiveRecord::Migration
  def change
    remove_column :orders, :class_id,:customer_id
  end
end
