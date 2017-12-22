json.extract! employee_payment, :id, :employee_details_id, :date_of_payment, :amount, :created_at, :updated_at
json.url employee_payment_url(employee_payment, format: :json)
