class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.belongs_to :semester
      t.integer :class_id
      t.timestamps
    end
  end
end
