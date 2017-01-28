puts "In app_assets:"
Rails.application.config.after_initialize do |app|
	puts app.assets.class
	app.assets.paths.each do |path|
		puts path
	end
end