class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :title
      t.string :image_url
      t.decimal :price, precision:8, scale: 2
      t.timestamps
    end
  end
end
