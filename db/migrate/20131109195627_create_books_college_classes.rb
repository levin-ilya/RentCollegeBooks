class CreateBooksCollegeClasses < ActiveRecord::Migration
  def change
    create_table :books_college_classes,:id => false do |t|
      t.integer :college_class_id
      t.integer :book_id
    end
    #TO Add THIS back
    #add_index :college_class_id
    #add_index :book_id
  end
end
