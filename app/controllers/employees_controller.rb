class EmployeesController < ApplicationController
  #GET /employees
  def index
    @employees = Employee.all
  end

  #GET /employees/:id
  def show
    @employee = Employee.find(params[:id])
  end

end
