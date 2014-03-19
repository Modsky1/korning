class FixCustomerSalesRelation2 < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      name = sale.customer_and_account_no.split(" ")[0]

      sale.customer_id = Customer.find_by(name: name).id
      sale.save
    end
  end
end
