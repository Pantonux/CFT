if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_VGiQGE1eQgN65H90CfOUQpPZ',
    secret_key: 'sk_test_oQOQdvwkxkbMTIHEzHQmjikg'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
