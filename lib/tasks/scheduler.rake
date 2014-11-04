desc "This task is called by the Heroku scheduler add-on"
# heroku run rake import_vehicles
task :import_vehicles => :environment do
  puts "Updating vehicles..."
  # import = ImportsController.new
  # import.import_ftp

  path_to_file = '/'
  filename = '8221.txt'
  

  time = Time.zone.now
  Dir.chdir("tmp" ) do
    Net::FTP.open(ENV["FTP_HOST"]) do |ftp|
      ftp.passive = true
      ftp.login(ENV["FTP_USER"],ENV["FTP_PASSWORD"])
      ftp.chdir(path_to_file)

      import = Import.new
      import.import_time = time
      import.name = time.strftime('%Y_%m_%d')
      import.file = ftp.get(filename)
      import.file = File.open(filename)
      import.save!
    end
  end

  Vehicle.delete_all

  for i in Import.all 
    i.latest = false
    i.save
  end
  
  @last_import = Import.last

  text = open(@last_import.file_url).read.gsub(/\"/,'')

  ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
  valid_string = ic.iconv(text + ' ')[0..-2]

  CSV.parse(text, { :headers => true, header_converters: :symbol, :col_sep => "," }) do |row|

    if Vehicle.find_by(vin: row[2])
      # puts row["vin"]
    else
      Vehicle.create! row.to_hash
    end
  end

  @last_import.current = Time.now
  @last_import.latest = true
  @last_import.save
    
  puts "done."
end