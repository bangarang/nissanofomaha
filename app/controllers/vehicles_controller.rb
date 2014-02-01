class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:show, :index]
  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.where(newused: 'U')
    @makes = []
    Vehicle.where(newused: 'U').select("DISTINCT(MAKE)").each do |p| 
      # @makes << p.make
        tmp =[]
        Vehicle.where(newused: 'U', make: p.make ).select("DISTINCT(MODEL)").each do |j|
          tmp << j.model
        end
        @makes << [p.make, tmp]
    end
  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vehicle }
      else
        format.html { render action: 'new' }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url }
      format.json { head :no_content }
    end
  end

  # def import
  #   Vehicle.import(params[:file])
  #   redirect_to root_url, notice: "Products imported."
  # end

  def import

    # ftp = Net::FTP.new()
    # ftp.passive = true
    # ftp.connect(host)
    # ftp.login(username,password)
    # files = ftp.chdir(path_to_file)
    # ftp.getbinaryfile(filename, tempfile, 1024)
    # ftp.close


    text = File.read('public/inventory.txt').gsub(/\"/,'')
    CSV.parse(text, { :headers => true, header_converters: :symbol, :col_sep => "\t" }) do |row|
      # Vehicle.create! row.to_hash
      # vehicle = Vehicle.find_by(vin: row["vin"]) || Vehicle.new
      # vehicle.attributes = row.to_hash.slice(*accessible_attributes)
      # vehicle.save!
      # puts "Vin: "
      # puts row[1]
      if Vehicle.find_by(vin: row[1])
        # puts row["vin"]
      else
        Vehicle.create! row.to_hash
      end
    end
    redirect_to vehicles_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:make, :model, :year, :vin, :photos, :dealerid,:vin,:stock_,:newused,:model_number,:body,:transmission,:series,:body_door_ct,:odometer,:engine_cylinder_ct,:engine_displacement,:drivetrain_desc,:colour,:interior_color,:invoice,:msrp,:book_value,:price,:inventory_date,:certified,:description,:features,:photo_url_list,:city_mpg,:highway_mpg,:photos_last_modified_date,:status_code,:cost,:series_detail,:inspection_checklist_,:video_url,:video_player_url,:rw)
    end
end
