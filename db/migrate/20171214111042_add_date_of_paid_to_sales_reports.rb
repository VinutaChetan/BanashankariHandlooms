class AddDateOfPaidToSalesReports < ActiveRecord::Migration
  def change
    add_column :sales_reports, :date_of_paid, :date
  end
end
