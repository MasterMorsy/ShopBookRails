class CompineAllSimilarBooksAtSingleCart < ActiveRecord::Migration[6.0]
  def change
    # get all cart
    Cart.all.each do |cart| 
      # make list with book id and quantity
      sums = cart.line_items.group(:book_id).sum(:quantity)
      # if line_item quantity > 1 delete all similar item and make only
      sums.each do |book_id, quantity| 
        if quantity > 1
          cart.line_items.where(book_id: book_id).delete_all
          item = cart.line_items.build(book_id: book_id)
          # set new quantity of all similar books
          item.quantity = quantity
          item.save!
        end
      end
    end
  end
end
