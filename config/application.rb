require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LoomLegacy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Add lib paths for autoloading
    config.autoload_paths += %W(#{config.root}/lib)

    # Configuration for the application, engines, and railties goes here.
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    
    # Set the image processing gem
    config.active_storage.variant_processor = :mini_magick # or :vips
  end
end
