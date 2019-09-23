class EditAddressNameFromOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :adderss, :address
  end
end
