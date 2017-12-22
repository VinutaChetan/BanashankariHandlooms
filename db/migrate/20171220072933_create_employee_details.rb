class CreateEmployeeDetails < ActiveRecord::Migration
  def change
    create_table :employee_details do |t|
      t.string :name
      t.text :address
      t.float :advance_payment
      t.date :date_of_joining
      t.float :remaining_balance

      t.timestamps null: false
    end
  end
end
