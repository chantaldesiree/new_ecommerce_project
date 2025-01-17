require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NewEcommerceProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    ActionMailer::Base.smtp_settings = {
      :address => 'smtp.google.com',
      :domain => 'mail.google.com',
      :port => 507,
      :user_name => 'chore.rewards.db@gmail.com',
      :password => 'Password01',
      :authentication => 'login',
      :enable_starttls_auto => 'true',
    }

  end
end
