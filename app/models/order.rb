class Order < ActiveRecord::Base
  has_and_belongs_to_many :college_classes
  belongs_to:customer
  belongs_to:semester

  def addCollegeClasses(classIDs)
    classIDs.each { |college_class_id|
      unless college_class_id.blank?
        self.college_classes << CollegeClass.find_by_id(college_class_id)
      end
    }
  end

end
