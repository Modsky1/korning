class DeleteEmployeeColumn < ActiveRecord::Migration
  def up
    remove_column :employees, :employee
  end

  def down
    add_column :employees, :employee, :string
  end
end
