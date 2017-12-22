json.extract! sales_report, :id, :category_id, :sub_category_id, :customer_name, :no_of_sarees, :amount, :total_amount, :paid, :balance, :details, :created_at, :updated_at
json.url sales_report_url(sales_report, format: :json)
