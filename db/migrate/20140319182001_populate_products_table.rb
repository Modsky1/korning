class PopulateProductsTable < ActiveRecord::Migration
  def up
    Sale.all.each do |sale|
      unless Product.where(name: sale.product_name).count > 0
        Product.create(name: sale.product_name)
        puts "Employee #{sale.product_name} created!"
      end
    end
  end

  def down
    Product.delete_all
    puts "Deleted all employees."
  end
end
