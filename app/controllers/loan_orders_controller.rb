class LoanOrdersController < ApplicationController
  before_action :set_loan_order, only: %i[ show edit update destroy ]

  # GET /loan_orders or /loan_orders.json
  def index
    @loan_orders = LoanOrder.all
  end

  # GET /loan_orders/1 or /loan_orders/1.json
  def show
  end

  # GET /loan_orders/new
  def new
    @loan_order = LoanOrder.new
  end

  # GET /loan_orders/1/edit
  def edit
  end

  # POST /loan_orders or /loan_orders.json
  def create
    @loan_order = LoanOrder.new(loan_order_params)

    respond_to do |format|
      if @loan_order.save
        format.html { redirect_to @loan_order, notice: "Loan order was successfully created." }
        format.json { render :show, status: :created, location: @loan_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_orders/1 or /loan_orders/1.json
  def update
    respond_to do |format|
      if @loan_order.update(loan_order_params)
        format.html { redirect_to @loan_order, notice: "Loan order was successfully updated." }
        format.json { render :show, status: :ok, location: @loan_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loan_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_orders/1 or /loan_orders/1.json
  def destroy
    @loan_order.destroy
    respond_to do |format|
      format.html { redirect_to loan_orders_url, notice: "Loan order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_order
      @loan_order = LoanOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_order_params
      params.require(:loan_order).permit(:loaner_id, :borrower_id, :artefact_id, :stripe_payment_id)
    end
end
