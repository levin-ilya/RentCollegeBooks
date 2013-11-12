class CreateCollegeClasses < ActiveRecord::Migration
  def change
    create_table :college_classes do |t|
      t.string :course_id
      t.string :name
      t.timestamps
    end
  end
end
