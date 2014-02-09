desc "This task is called by the Heroku scheduler add-on"
# heroku run rake import_vehicles
task :import_vehicles => :environment do
  puts "Updating vehicles..."
  # import = ImportsController.new
  # import.import_ftp

  puts ENV['FTP_HOST']
  puts ENV["FTP_USER"]
  puts ENV["FTP_PASSWORD"]
  puts "done."
end