class EmployeeTicketsController < ApplicationController
  def create
    @employee = Employee.find(params[:id])
    if params[:ticket_id] != nil
      EmployeeTicket.create!(employee_id: params[:id], ticket_id: params[:ticket_id])
    end
    redirect_to "/employee/#{@employee.id}"
  end
end