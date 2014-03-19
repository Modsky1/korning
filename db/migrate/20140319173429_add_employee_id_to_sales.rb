 class AddEmployeeIdToSales < ActiveRecord::Migration
  def up

    Sale.all.each do |sale|

      sale.employee_id = Employee.find_by(employee: sale.employee).id
    end
    # add employee id column to sales table
    # for each sale
    #   find the row in the employees table (using the sales.employee column)
    #   insert the appropriate employee_id value in the sales table
    # end
  end
 end
 #Employee.find_by(employee: "Clancy Wiggum (clancy.wiggum@korning.com)")
