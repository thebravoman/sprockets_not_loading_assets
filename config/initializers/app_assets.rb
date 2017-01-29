puts ">> Start: Assets after initialize:"
Rails.application.config.after_initialize do |app|
	puts app.assets.class
	app.assets.paths.each do |path|
		puts path
	end
end
puts "<< End: Assets after initialize"