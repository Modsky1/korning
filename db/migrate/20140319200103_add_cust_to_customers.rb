class AddCustToCustomers < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      array = sale.customer_and_account_no.split(" ")
      name = array[0]
      account_number = array[1].gsub(/[\(\)]/,'')

      customer = Customer.create(name: name, account_number: account_number)
    end
  end
end
