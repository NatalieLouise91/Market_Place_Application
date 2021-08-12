class LoanOrdersController < ApplicationController
  before_action :set_loan_order, only: %i[ show edit update destroy ]

  # ^^^ before action callback to set a loan order ^^^

  # index to show all loan orders and preloading loaner, borrower and artefact entities
  def index
    @loan_orders = LoanOrder.all.preload(:loaner, :borrower, :artefact)
  end

  # show individual loan order 
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_order
      @loan_order = LoanOrder.find(params[:id])
    end

    # Required params for the creation of a new loan order
    def loan_order_params
      params.require(:loan_order).permit(:loaner_id, :borrower_id, :artefact_id, :stripe_payment_id)
    end
end
