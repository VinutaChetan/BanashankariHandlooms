class SalesReport < ActiveRecord::Base
	belongs_to :category
	belongs_to :sub_category

	validate :set_balance

	def set_balance
		self.total_amount = (self.no_of_sarees * self.amount)
		 if self.paid != self.total_amount
		 binding.pry
	      self.balance = (self.total_amount) - (self.paid)
	     binding.pry
	    else
	      self.balance = 0
	    end 
    end 
end
