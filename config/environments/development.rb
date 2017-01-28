FLLCasts::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

	#~ config.cache_store = :file_store, "tmp/cache"

	config.active_record.raise_in_transactional_callbacks = true
  
	# Print deprecation notices to the Rails logger
	config.active_support.deprecation = :log

  config.assets.compile = true
  
	# Expands the lines which load the assets
	config.assets.debug = true

	# For favicon
	config.public_file_server.enabled = false
	
  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

	config.eager_load = false
	
  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  #~ config.action_view.debug_rjs             = false
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  if config.respond_to?(:action_mailer)
      config.action_mailer.raise_delivery_errors = true

      # Deliver mails sent in development
      config.action_mailer.perform_deliveries = true

      config.action_mailer.default_url_options = { :host => "http://localhost:3000"}
  end
end

