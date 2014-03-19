class MoveEmployeeData < ActiveRecord::Migration

  def up
    Sale.all.each do |sale|
      unless Employee.where(employee: sale.employee).count > 0
        Employee.create(employee: sale.employee)
        puts "Employee #{sale.employee} created!"
      end
    end
  end

  def down
    Employee.delete_all
    puts "Deleted all employees."
  end
end
