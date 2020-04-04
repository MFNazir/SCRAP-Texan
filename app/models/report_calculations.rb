class ReportCalculations

    def self.created_at
        Customer.where(created_at: Date.today.beginning_of_year..Date.today.end_of_month)
    end

end