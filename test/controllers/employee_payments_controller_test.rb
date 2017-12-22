require 'test_helper'

class EmployeePaymentsControllerTest < ActionController::TestCase
  setup do
    @employee_payment = employee_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_payment" do
    assert_difference('EmployeePayment.count') do
      post :create, employee_payment: { amount: @employee_payment.amount, date_of_payment: @employee_payment.date_of_payment, employee_details_id: @employee_payment.employee_details_id }
    end

    assert_redirected_to employee_payment_path(assigns(:employee_payment))
  end

  test "should show employee_payment" do
    get :show, id: @employee_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_payment
    assert_response :success
  end

  test "should update employee_payment" do
    patch :update, id: @employee_payment, employee_payment: { amount: @employee_payment.amount, date_of_payment: @employee_payment.date_of_payment, employee_details_id: @employee_payment.employee_details_id }
    assert_redirected_to employee_payment_path(assigns(:employee_payment))
  end

  test "should destroy employee_payment" do
    assert_difference('EmployeePayment.count', -1) do
      delete :destroy, id: @employee_payment
    end

    assert_redirected_to employee_payments_path
  end
end
