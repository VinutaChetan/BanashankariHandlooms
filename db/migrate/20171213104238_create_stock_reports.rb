class CreateStockReports < ActiveRecord::Migration
  def change
    create_table :stock_reports do |t|
      t.integer :category_id
      t.integer :sub_category_id
      t.integer :no_of_stock
      t.string :colors

      t.timestamps null: false
    end
  end
end
