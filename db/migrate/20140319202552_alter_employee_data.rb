class AlterEmployeeData < ActiveRecord::Migration
  def change
    Employee.all.each do |person|
      array = person.employee.split(" ")
      person.email = array[2].gsub(/[\(\)]/,'')
      person.first_name = array[0]
      person.last_name = array[1]
      person.save
    end
  end
end
