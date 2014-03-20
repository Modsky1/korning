class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

class RemoveRedundantEmployeeFields < ActiveRecord::Migration
  def up
    remove_column :employee
  end

  def down
    add_column :employee, :string
  end
end

  # create_table "sales", force: true do |t|
  #   t.string   "employee"
  #   t.string   "customer_and_account_no"
  #   t.string   "product_name"
  #   t.date     "sale_date"
  #   t.decimal  "sale_amount"
  #   t.integer  "units_sold"
  #   t.string   "invoice_no"
  #   t.string   "invoice_frequency"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
