class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :account_number, unique: true

      t.timestamps
    end
  end
end
# class RemoveCustFromSale < ActiveRecord::Migration
#   def up
#     remove_column :sales, :customer_and_account_no
#   end

#   def down
#     add_column :sales, :customer_and_account_no, :string
# end
