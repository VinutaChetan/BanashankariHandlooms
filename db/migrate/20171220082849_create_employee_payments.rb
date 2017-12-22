class CreateEmployeePayments < ActiveRecord::Migration
  def change
    create_table :employee_payments do |t|
      t.integer :employee_details_id
      t.date :date_of_payment
      t.float :amount

      t.timestamps null: false
    end
  end
end
