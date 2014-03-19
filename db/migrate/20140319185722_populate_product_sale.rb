class PopulateProductSale < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      product = ProductSale.create(product_id: sale.product_id,sale_id: sale.id, sale_amount: sale.sale_amount, quantity: sale.units_sold)
      # Product_Sale.product_id = sale.product_id
      # Product_Sale.sale_id = sale.id
      # Product_Sale.sale_amount = sale.sale_amount
      # Product_Sale.quantity = sale.units_sold
    end
  end
end

      # t.float :sale_amount, null: false
      # t.float :quantity, null: false
