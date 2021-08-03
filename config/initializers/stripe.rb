#set up stripe API Key
Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret)