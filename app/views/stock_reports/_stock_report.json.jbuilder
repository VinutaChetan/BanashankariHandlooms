json.extract! stock_report, :id, :category_id, :sub_category_id, :no_of_stock, :colors, :created_at, :updated_at
json.url stock_report_url(stock_report, format: :json)
