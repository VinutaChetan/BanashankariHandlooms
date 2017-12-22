class EmployeeDetail < ActiveRecord::Base
	has_many :employee_payments
end
