class ReportsController < ApplicationController
  def index

     
    end  

    def empstatus 
    
      employee_status_id = EmployeeStatus.find_by(employee_status: "Active").id()
      @employees = Employee.where(employee_status_id: employee_status_id)
    end

    def empinactive
      employee_inactive_id = EmployeeStatus.find_by(employee_status: "Inactive").id()
      @employees = Employee.where(employee_status_id: employee_inactive_id)
  
    end

    def empfired
      employee_fired_id = EmployeeStatus.find_by(employee_status: "Fired").id()
      @employees = Employee.where(employee_status_id: employee_fired_id)
    end

    def custactive
      customer_active_id = CustomerStatus.find_by(customer_status: "Active").id()
      @customers = Customer.where(customer_status_id: customer_active_id)
    
    end

    def contactivebuyer

      cont_buyer_active_id = CustomerType.find_by(customer_type: "Contract Buyer").id()
      customer_active_id = CustomerStatus.find_by(customer_status: "Active").id()
      total_invoices = Customer.joins(:invoices).group(:id).having("count(invoices.id) > 0")
      @customers =  Customer.joins(:invoices).group(:id).having("count(invoices.id) > 0").where(customer_type_id:  cont_buyer_active_id).where(customer_status_id: customer_active_id)
    end

  end





