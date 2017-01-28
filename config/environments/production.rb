FLLCasts::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true
  config.force_ssl = false
  config.eager_load = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  # For nginx:
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  # If you have no front-end server that supports something like X-Sendfile,
  # just comment this out and Rails will serve the files

  # See everything in the log (default is :info)
  config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  # we are still running on heroku so we have the rails serve the assets
  config.public_file_server.enabled = true

  # Compress JavaScripts and CSS
  config.assets.js_compressor = :uglifier

  # Choose the compressors to use
  # config.assets.js_compressor  = :uglifier
  # config.assets.css_compressor = :yui

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Generate digests for assets URLs.
  config.assets.digest = true

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( ckeditor_edit.js sublime_track.js viblast_track.js panda.css subscriptions.css)

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

	# Enable locale fallbacks for I18n (makes lookups for any locale fall back to
	# the I18n.default_locale when a translation can not be found)
	config.i18n.fallbacks = true
	
	# Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
    
  # Disable delivery errors, bad email addresses will be ignored
  if config.respond_to?(:action_mailer)

  end

end
