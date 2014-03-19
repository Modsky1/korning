class CreateProductSales < ActiveRecord::Migration
  def change
    create_table :product_sales do |t|
      t.integer :sale_id, null: false
      t.integer :product_id, null: false
      t.integer :sale_amount, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end

end
