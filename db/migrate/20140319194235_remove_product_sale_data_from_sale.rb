class RemoveProductSaleDataFromSale < ActiveRecord::Migration
  def change
    remove_column :sales, :sale_amount
    remove_column :sales, :units_sold
    remove_column :sales, :product_name
    remove_column :sales, :product_id

  end

end
