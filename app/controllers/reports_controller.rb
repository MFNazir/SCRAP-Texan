class ReportsController < ApplicationController
  def index
     
    end  

    def empstatus 
    
      employee_status_id = EmployeeStatus.find_by(employee_status: "Active").id()
      @employees = Employee.where(employee_status_id: employee_status_id)
    end

  end





