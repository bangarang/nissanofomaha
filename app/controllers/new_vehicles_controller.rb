class NewVehiclesController < ApplicationController
  before_action :set_new_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:show, :index]
  # GET /new_vehicles
  # GET /new_vehicles.json
  def index
    @new_vehicles = NewVehicle.all
    @categories = Category.all
  end

  # GET /new_vehicles/1
  # GET /new_vehicles/1.json
  def show
    @tmp = @new_vehicle.name.gsub("<sup>","")
    @tmp = @tmp.gsub("</sup>","")

    @tmp = @tmp.delete('^a-zA-Z ')

    if @tmp.match(" ").pre_match
      @vauto_name = @tmp.match(" ").pre_match
    else 
      @vauto_name = @tmp
    end 
    @tmp_count = Vehicle.where( year: 2014, make: 'Nissan', model: @vauto_name ).count
    @vauto_count = (@tmp_count/5).round * 5


  end

  # GET /new_vehicles/new
  def new
    @new_vehicle = NewVehicle.new
  end

  # GET /new_vehicles/1/edit
  def edit
  end

  # POST /new_vehicles
  # POST /new_vehicles.json
  def create
    @new_vehicle = NewVehicle.new(new_vehicle_params)

    respond_to do |format|
      if @new_vehicle.save
        format.html { redirect_to @new_vehicle, notice: 'New vehicle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @new_vehicle }
      else
        format.html { render action: 'new' }
        format.json { render json: @new_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_vehicles/1
  # PATCH/PUT /new_vehicles/1.json
  def update
    respond_to do |format|
      if @new_vehicle.update(new_vehicle_params)
        format.html { redirect_to @new_vehicle, notice: 'New vehicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @new_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_vehicles/1
  # DELETE /new_vehicles/1.json
  def destroy
    @new_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to new_vehicles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_vehicle
      @new_vehicle = NewVehicle.find_by_slug(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_vehicle_params
      params.require(:new_vehicle).permit(:name, :description, :city_mpg, :highway_mpg, :msrp, :image, :category_id, :headline, :slug)
    end
end
