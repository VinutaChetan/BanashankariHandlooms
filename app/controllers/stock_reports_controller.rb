class StockReportsController < ApplicationController
  before_action :set_stock_report, only: [:show, :edit, :update, :destroy]

  # GET /stock_reports
  # GET /stock_reports.json
  def index
    @stock_reports = StockReport.all
  end

  # GET /stock_reports/1
  # GET /stock_reports/1.json
  def show
  end

  # GET /stock_reports/new
  def new
    @stock_report = StockReport.new
  end

  # GET /stock_reports/1/edit
  def edit
  end

  # POST /stock_reports
  # POST /stock_reports.json
  def create
    @stock_report = StockReport.new(stock_report_params)

    respond_to do |format|
      if @stock_report.save
        format.html { redirect_to @stock_report, notice: 'Stock report was successfully created.' }
        format.json { render :show, status: :created, location: @stock_report }
      else
        format.html { render :new }
        format.json { render json: @stock_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_reports/1
  # PATCH/PUT /stock_reports/1.json
  def update
    respond_to do |format|
      if @stock_report.update(stock_report_params)
        format.html { redirect_to @stock_report, notice: 'Stock report was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_report }
      else
        format.html { render :edit }
        format.json { render json: @stock_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_reports/1
  # DELETE /stock_reports/1.json
  def destroy
    @stock_report.destroy
    respond_to do |format|
      format.html { redirect_to stock_reports_url, notice: 'Stock report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_report
      @stock_report = StockReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_report_params
      params.require(:stock_report).permit(:category_id, :sub_category_id, :no_of_stock, :colors)
    end
end
