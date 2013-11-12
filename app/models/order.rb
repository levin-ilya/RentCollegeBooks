class Order < ActiveRecord::Base
  has_and_belongs_to_many :college_classes
  belongs_to:customer
  belongs_to:semester
end
