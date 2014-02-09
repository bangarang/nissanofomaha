desc "This task is called by the Heroku scheduler add-on"
task :import_vehicles => :environment do
  puts "Updating vehicles..."
  Import.import_ftp
  puts "done."
end