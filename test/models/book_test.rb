require 'test_helper'

class BookTest < ActiveSupport::TestCase
  fixtures :books
  # test "the truth" do
  #   assert true
  # end

  test "book is valid with all fields" do
    @book = books(:book_with_all_fields)
    assert_not @book.invalid?
  end

  test "book with no title is invalid" do
    @book = books(:book_with_no_title)
    assert @book.invalid?
  end

  test "book with no price is invalid" do
    @book = books(:book_with_no_price)
    assert @book.invalid?
  end

  test "book with no isbn is invalid" do
    @book = books(:book_with_no_isbn)
    assert @book.invalid?
  end

  test "book with no image is invalid" do
    @book = books(:book_with_no_img)
    assert @book.invalid?
  end

  test "book with one cent price is valid" do
    @book = books(:book_with_price_one_cent)
    assert_not @book.invalid?
  end

  test "book with greater one cent price is valid" do
    @book = books(:book_with_price_greater_one_cent)
    assert_not @book.invalid?
  end

  test "book with less then one cent price is not valid" do
    @book = books(:book_with_price_less_one_cent)
    assert @book.invalid?
  end

end
