class ReportCalculations

    def self.total_invoices
        Customer.joins(:invoices).group(:id).having("count(invoices.id) > 0")
    end

end