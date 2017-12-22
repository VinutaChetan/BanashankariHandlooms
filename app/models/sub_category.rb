class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :stock_reports
	has_many :sales_reports
end
