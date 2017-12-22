class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.integer :category_id
      t.integer :no_of_stock
      t.integer :stock_required

      t.timestamps null: false
    end
  end
end
