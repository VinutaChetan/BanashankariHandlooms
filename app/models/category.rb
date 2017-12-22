class Category < ActiveRecord::Base
	has_many :sub_categories
	has_many :stock_reports
	has_many :sales_reports
end
