class ImportsController < ApplicationController
  before_action :set_import, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  # GET /imports
  # GET /imports.json
  def index
    @imports = Import.all.reverse
  end

  # GET /imports/1
  # GET /imports/1.json
  def show
  end

  # GET /imports/new
  def new
    @import = Import.new
  end

  # GET /imports/1/edit
  def edit
  end

  # POST /imports
  # POST /imports.json
  def create
    @import = Import.new(import_params)

    respond_to do |format|
      if @import.save
        format.html { redirect_to @import, notice: 'Import was successfully created.' }
        format.json { render action: 'show', status: :created, location: @import }
      else
        format.html { render action: 'new' }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imports/1
  # PATCH/PUT /imports/1.json
  def update
    respond_to do |format|
      if @import.update(import_params)
        format.html { redirect_to @import, notice: 'Import was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imports/1
  # DELETE /imports/1.json
  def destroy
    @import.destroy
    respond_to do |format|
      format.html { redirect_to imports_url }
      format.json { head :no_content }
    end
  end

  def restore

    Vehicle.delete_all

    @import = Import.find(params[:import_id])

    import(@import)

    redirect_to imports_url
  end  

  def import_latest

    Vehicle.delete_all

    @last_import = Import.last

    import(@last_import)

    redirect_to imports_url
  end

  def import_ftp 

    path_to_file = '/'
    filename = 'inventory.txt'
    

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

    @last_import = Import.last
    
    import(@last_import)

    redirect_to imports_url

  end

  def import(import)
    text = open(import.file_url).read.gsub(/\"/,'')

    CSV.parse(text, { :headers => true, header_converters: :symbol, :col_sep => "\t" }) do |row|

      if Vehicle.find_by(vin: row[1])
        # puts row["vin"]
      else
        Vehicle.create! row.to_hash
      end
    end

    for i in Import.all 
      i.latest = false
      i.save
    end

    import = Import.find(import)
    import.current = Time.now
    import.latest = true
    import.save

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import
      @import = Import.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_params
      params.require(:import).permit(:name, :file, :import_time, :current, :latest)
    end
end
