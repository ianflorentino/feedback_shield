require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FeedbackShield
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
		config.autoload_paths += Dir["#{Rails.root}/app/models/**/*"]
    config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
    config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]

    # Enable the logstasher logs for the current environment
    config.logstasher.enabled = true

    # This line is optional if you do not want to suppress app logs in your <environment>.log
    config.logstasher.suppress_app_log = false

    # This line is optional, it allows you to set a custom value for the @source field of the log event
    #config.logstasher.source = 'your.arbitrary.source'

    # This line is optional if you do not want to log the backtrace of exceptions
    config.logstasher.backtrace = false

    # This line is optional, defaults to log/logstasher_<environment>.log
    #config.logstasher.logger_path = 'log/logstasher.log'

    # Enable logging of controller params
    config.logstasher.log_controller_parameters = true
  end
end
