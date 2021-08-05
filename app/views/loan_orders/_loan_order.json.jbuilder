json.extract! loan_order, :id, :loaner_id, :borrower_id, :artefact_id, :stripe_payment_id, :created_at, :updated_at
json.url loan_order_url(loan_order, format: :json)
