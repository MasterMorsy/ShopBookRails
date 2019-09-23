class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum pay_type: {
         "Check" => 0,
         "Credit" => 1,
         "Purchase" => 2,
       }

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys

  def get_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
