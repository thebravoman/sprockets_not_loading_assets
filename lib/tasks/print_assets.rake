require 'rails/all'

namespace :my do

	desc "Print assets"
	task :print_assets => :environment do
		puts 
		puts ">> Print assets"
		Rails.application.assets.paths.each do |path|
			puts path
		end
		puts "<< End: Print assets"
	end

end
