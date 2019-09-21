class Book < ApplicationRecord

  validates :title, :description, :price, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 5.00 }
  validates :img_url, allow_blank: true, format: { with: %r{\.(jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  
end
