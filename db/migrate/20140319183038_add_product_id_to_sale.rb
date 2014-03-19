class AddProductIdToSale < ActiveRecord::Migration
  def up
    add_column :sales, :product_id, :integer
  end

  def down
    remove_column :sales, :product_id
  end
end
