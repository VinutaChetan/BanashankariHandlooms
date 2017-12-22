require 'test_helper'

class StockReportsControllerTest < ActionController::TestCase
  setup do
    @stock_report = stock_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_report" do
    assert_difference('StockReport.count') do
      post :create, stock_report: { category_id: @stock_report.category_id, colors: @stock_report.colors, no_of_stock: @stock_report.no_of_stock, sub_category_id: @stock_report.sub_category_id }
    end

    assert_redirected_to stock_report_path(assigns(:stock_report))
  end

  test "should show stock_report" do
    get :show, id: @stock_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_report
    assert_response :success
  end

  test "should update stock_report" do
    patch :update, id: @stock_report, stock_report: { category_id: @stock_report.category_id, colors: @stock_report.colors, no_of_stock: @stock_report.no_of_stock, sub_category_id: @stock_report.sub_category_id }
    assert_redirected_to stock_report_path(assigns(:stock_report))
  end

  test "should destroy stock_report" do
    assert_difference('StockReport.count', -1) do
      delete :destroy, id: @stock_report
    end

    assert_redirected_to stock_reports_path
  end
end
