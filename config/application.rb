require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EcaSystem
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.secret_key_base = '8d6ebd92d07bfff5b4a9b0f52997238b062ace3a1a472a7608dafcd00fe156c4c1b7b0851ed596a2be582fffe8400b9717f2d9fb8f200b2260132c4582f79ef0'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
