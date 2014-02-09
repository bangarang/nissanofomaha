desc "This task is called by the Heroku scheduler add-on"
# heroku run rake import_vehicles
task :import_vehicles => :environment do
  puts "Updating vehicles..."
  import = ImportsController.new
  import.import_ftp
  puts "done."
end