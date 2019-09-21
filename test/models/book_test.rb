require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "attribute validation" do
    book = Book.new
    assert book.invalid?
    assert book.errors[:title].any?
    assert book.errors[:description].any?
    assert book.errors[:price].any?
  end
end
