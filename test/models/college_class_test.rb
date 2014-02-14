require 'test_helper'

class CollegeClassTest < ActiveSupport::TestCase
  fixtures :college_classes
  # test "the truth" do
  #   assert true
  # end

  test "college class is valid with all fields" do
    @collegeClass = college_classes(:course_with_all_fields)
    assert_not @collegeClass.invalid?
  end

  test "college class is not valid with no name" do
    @collegeClass = college_classes(:course_with_no_name)
    assert @collegeClass.invalid?
  end

  test "college class is not valid with no id" do
    @collegeClass = college_classes(:course_with_no_id)
    assert @collegeClass.invalid?
  end

end
