require 'test_helper'

class SalesReportsControllerTest < ActionController::TestCase
  setup do
    @sales_report = sales_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_report" do
    assert_difference('SalesReport.count') do
      post :create, sales_report: { amount: @sales_report.amount, balance: @sales_report.balance, category_id: @sales_report.category_id, customer_name: @sales_report.customer_name, details: @sales_report.details, no_of_sarees: @sales_report.no_of_sarees, paid: @sales_report.paid, sub_category_id: @sales_report.sub_category_id, total_amount: @sales_report.total_amount }
    end

    assert_redirected_to sales_report_path(assigns(:sales_report))
  end

  test "should show sales_report" do
    get :show, id: @sales_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_report
    assert_response :success
  end

  test "should update sales_report" do
    patch :update, id: @sales_report, sales_report: { amount: @sales_report.amount, balance: @sales_report.balance, category_id: @sales_report.category_id, customer_name: @sales_report.customer_name, details: @sales_report.details, no_of_sarees: @sales_report.no_of_sarees, paid: @sales_report.paid, sub_category_id: @sales_report.sub_category_id, total_amount: @sales_report.total_amount }
    assert_redirected_to sales_report_path(assigns(:sales_report))
  end

  test "should destroy sales_report" do
    assert_difference('SalesReport.count', -1) do
      delete :destroy, id: @sales_report
    end

    assert_redirected_to sales_reports_path
  end
end
