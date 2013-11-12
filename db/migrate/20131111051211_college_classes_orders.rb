class CollegeClassesOrders < ActiveRecord::Migration
  def change
    create_table :college_classes_orders,:id => false do  |t|
      t.integer :college_class_id
      t.integer :order_id
    end
  end
end
