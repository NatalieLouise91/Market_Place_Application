class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]
  
    # successfully made payment for loan. store values for individual transaction in @artefact & @ purchase
    def success
      artefact_id = params[:artefactId] 
      @artefact = Artefact.find(artefact_id)
      @purchase = LoanOrder.find_by_artefact_id(artefact_id)
    end 
  
    # set webhook method, store collected Stripe payment metadata in artefact_id, borrower_id, loaner_id, receipt_url variables
    def webhook
      payment_intent_id = params[:data][:object][:payment_intent]
      payment = Stripe::PaymentIntent.retrieve(payment_intent_id)
      
      artefact_id = payment.metadata.artefact_id
      borrower_id = payment.metadata.borrower_id
      loaner_id = payment.metadata.loaner_id
    
      receipt_url = payment.charges.data[0].receipt_url

      # create a new loan order once payment is successful using metadata from Stripe payment 

      LoanOrder.create(borrower_id: borrower_id, loaner_id: loaner_id, artefact_id: artefact_id, stripe_payment_id: payment_intent_id, receipt_url: receipt_url)

      pp payment
      
    end
end
