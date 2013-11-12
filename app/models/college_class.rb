class CollegeClass < ActiveRecord::Base
  validates :name,:course_id,presence:true
  has_and_belongs_to_many :books
  has_and_belongs_to_many :orders
end
