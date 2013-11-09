class Book < ActiveRecord::Base
  validates :title,:isbn,:image_url,:price, presence: true
  validates_numericality_of :price,:greater_than_or_equal_to => 0.01
  validates_numericality_of :isbn,:greater_than_or_equal_to => 1

  has_and_belongs_to_many :college_classes
end
