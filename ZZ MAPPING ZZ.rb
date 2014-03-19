rails g model customer account_number:integer name:string

rails g model product name:string

rails g model employee first_name:string last_name:string email:string

rails g model employee employee:string

rails g model sale_information sale_id:integer product_id:integer quantity:integer

rails g model invoices

add_column :sales, :employee_id, :integer





TABLES:

      CUSTOMER -
      PRODUCT - !DONE
      EMPLOYEE - !DONE (must remove emploee name )
      INVOICES
      SALES ?

PRODUCT SALES: Product_id, sale_id, product_price, quantity
Product: id, name
Invoice: invoice_number, sale_id, amount_due?
SALES: sale_date?, ids to link sales to almost every other TABLES
Employee: first_name, last_name, email, id
Customer: first_name, last_name, id,
customer and acct. numba

1)Creat TABLE
2) put relevant data in its respective TABLE
3) Delete data from sales
4) link the table to the sales table utilizing an id

  create_table "sales", force: true do |t|
    t.string   "employee"
    t.string   "customer_and_account_no"
    t.string   "product_name"
    t.date     "sale_date"
    t.decimal  "sale_amount"
    t.integer  "units_sold"
    t.string   "invoice_no"
    t.string   "invoice_frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
