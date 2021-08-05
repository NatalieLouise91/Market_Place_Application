# Rails.configuration.stripe = {
#     :public => Rails.application.credentials.dig(:stripe, :public),
#     :secret => Rails.application.credentials.dig(:stripe, :secret)
# }
Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret)