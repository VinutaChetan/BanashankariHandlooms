class EmployeePaymentsController < ApplicationController
  before_action :set_employee_payment, only: [:show, :edit, :update, :destroy]

  # GET /employee_payments
  # GET /employee_payments.json
  def index
    @employee_payments = EmployeePayment.all
  end

  # GET /employee_payments/1
  # GET /employee_payments/1.json
  def show
  end

  # GET /employee_payments/new
  def new
    @employee_payment = EmployeePayment.new
  end

  # GET /employee_payments/1/edit
  def edit
  end

  # POST /employee_payments
  # POST /employee_payments.json
  def create
    @employee_payment = EmployeePayment.new(employee_payment_params)

    respond_to do |format|
      if @employee_payment.save
        format.html { redirect_to @employee_payment, notice: 'Employee payment was successfully created.' }
        format.json { render :show, status: :created, location: @employee_payment }
      else
        format.html { render :new }
        format.json { render json: @employee_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_payments/1
  # PATCH/PUT /employee_payments/1.json
  def update
    respond_to do |format|
      if @employee_payment.update(employee_payment_params)
        format.html { redirect_to @employee_payment, notice: 'Employee payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_payment }
      else
        format.html { render :edit }
        format.json { render json: @employee_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_payments/1
  # DELETE /employee_payments/1.json
  def destroy
    @employee_payment.destroy
    respond_to do |format|
      format.html { redirect_to employee_payments_url, notice: 'Employee payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_payment
      @employee_payment = EmployeePayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_payment_params
      params.require(:employee_payment).permit(:employee_details_id, :date_of_payment, :amount)
    end
end
