Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '922440521199424','6f8ea3356bcdf28db9f08f6a8369c12f',
           scope: 'public_profile', display: 'page', image_size: 'square'

  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET'], image_size: 'normal'
end