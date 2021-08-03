class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook] 
  
    # successfully made payment for loan
    def success 
    end 
  
    # set webhook method
    def webhook
      payment_intent_id = params[:data][:object][:payment_intent]
      payment = Stripe::PaymentIntent.retrieve(payment_intent_id)
      
      artefact_id = payment.metadata.artefact_id
      borrower_id = payment.metadata.borrower_id
      loaner_id = payment.metadata.loaner_id
    
      receipt_url = payment.charges.data[0].receipt_url

      LoanOrder.create(borrower_id: borrower_id, loaner_id: loaner_id, artefact_id: artefact_id, payment_intent_id: payment_intent_id, receipt_url: receipt_url)
  
      p "Artefact_id" + artefact_id
      p "Borrower_id" + borrower_id
      p "Loaner_id" + loaner_id
      render plain: "Success"
    end
end
