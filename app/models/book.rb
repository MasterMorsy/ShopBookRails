class Book < ApplicationRecord
  has_many :line_items
  before_destroy :ensure_not_referenced_to_any_line_item


  def ensure_not_referenced_to_any_line_item
    unless line_items.empty?
      errors.add("Sorry this book related with cart")
      throw :abort
    end
  end

  validates :title, :description, :price, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 5.00 }
  validates :img_url, allow_blank: true, format: { with: %r{\.(jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  
end
