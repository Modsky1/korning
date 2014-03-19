class AddIdToSalesProductid < ActiveRecord::Migration

  def change
    Sale.all.each do |sale|
      sale.product_id = Product.find_by(name: sale.product_name).id
      sale.save
    end
  end

  # def down
  #   Sale.product_id.delete
end
