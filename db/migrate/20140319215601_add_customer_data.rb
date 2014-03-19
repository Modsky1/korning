class AddCustomerData < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      cust_name = sale.customer_and_account_no.split(" ")[0]
      unless Customer.where(name: cust_name).count > 0
        acct_number = sale.customer_and_account_no.split(" ")[1].gsub(/[\(\)]/, '')
        Customer.create(name: cust_name, account_number: acct_number)
        puts "Customer #{sale.customer_and_account_no} created!"
      end
      sale.customer_id = Customer.find_by(name: cust_name).id
      sale.save
    end
  end
end
