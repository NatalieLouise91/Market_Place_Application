class LoanOrderController < ApplicationController
  before_action :set_loan_order, only: %i[ show edit update destroy ]

  # successfully loaned an artefact
  def success 
  end 
  # show all loan orders GET method
  def index
    @loan_order = LoanOrder.all
  end

  # Show individual loan order GET method
  def show
  end

  # produce a new loan order GET method
  def new
    @loan_order = LoanOrder.new
  end

  # edit an exisiting loan order GET method
  def edit
  end

  # POST /artefacts or /artefacts.json
  def create
    @loan_order = LoanOrder.new(loan_order_params)
    @Loan_order.loaner_id = current_user.profile.loaner.id
    @Loan_order.borrower_id = current_user.profile.borrower.id

    respond_to do |format|
      if @loan_order.save
        format.html { redirect_to @loan_order.artefact, notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @loan_order.artefact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan_order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_order
      @loan_order = LoanOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artefact_params
      params.require(:loan_order).permit(:borrower_id, :loaner_id, :artefact_id, :stripe_payment_id)
    end
end
