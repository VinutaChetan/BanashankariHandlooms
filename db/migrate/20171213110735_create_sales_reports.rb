class CreateSalesReports < ActiveRecord::Migration
  def change
    create_table :sales_reports do |t|
      t.integer :category_id
      t.integer :sub_category_id
      t.string :customer_name
      t.integer :no_of_sarees
      t.float :amount
      t.float :total_amount
      t.float :paid
      t.float :balance
      t.text :details

      t.timestamps null: false
    end
  end
end
