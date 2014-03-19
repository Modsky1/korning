class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :sales_date
      t.integer :invoice_number
      t.string :invoice_frequency
      t.integer :sale_id

      t.timestamps
    end
  end
end
