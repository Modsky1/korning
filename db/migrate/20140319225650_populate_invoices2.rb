class PopulateInvoices2 < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
     inv_num = sale.invoice_no
     inv_freq = sale.invoice_frequency
     # unless Invoice.where(invoice_number: inv_num).count > 0
     Invoice.create(invoice_number: inv_num, invoice_frequency: inv_freq)
     puts "Invoice #{inv_num} created!"
      #end
      sale.invoice_id = Invoice.find_by(invoice_number: inv_num).id
      sale.save
    end
  end
end


