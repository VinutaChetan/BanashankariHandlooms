json.extract! employee_detail, :id, :name, :address, :advance_payment, :date_of_joining, :remaining_balance, :created_at, :updated_at
json.url employee_detail_url(employee_detail, format: :json)
