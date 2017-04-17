require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TourBooking
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    PROPERTY_NAME = "Serene Lakes"
    USERMAILER_FROM_ADDRESS = "info@serenelakes.com"
    TOUR_AGENT_EMAIL = "tours@example.com"
  end
end
