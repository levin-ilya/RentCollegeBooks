require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  fixtures :orders
  test "add a class to an order" do
    order = orders(:one)
    college_class = college_classes(:one)
    order.addCollegeClasses([college_class.id])
    assert order.college_classes.count==1
  end
end
