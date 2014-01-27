class ExteriorsController < ApplicationController
  before_action :set_exterior, only: [:show, :edit, :update, :destroy]

  # GET /exteriors
  # GET /exteriors.json
  def index
    @exteriors = Exterior.all
  end

  # GET /exteriors/1
  # GET /exteriors/1.json
  def show
  end

  # GET /exteriors/new
  def new
    @exterior = Exterior.new(:new_vehicle_id => params[:new_vehicle_id])
    @new = params[:new_vehicle_id]
  end

  # GET /exteriors/1/edit
  def edit
  end

  # POST /exteriors
  # POST /exteriors.json
  def create
    @exterior = Exterior.new(exterior_params)

    respond_to do |format|
      if @exterior.save
        format.html { redirect_to @exterior, notice: 'Exterior was successfully created.' }
        format.json { render action: 'show', status: :created, location: @exterior }
      else
        format.html { render action: 'new' }
        format.json { render json: @exterior.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exteriors/1
  # PATCH/PUT /exteriors/1.json
  def update
    respond_to do |format|
      if @exterior.update(exterior_params)
        format.html { redirect_to @exterior, notice: 'Exterior was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exterior.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exteriors/1
  # DELETE /exteriors/1.json
  def destroy
    @exterior.destroy
    respond_to do |format|
      format.html { redirect_to exteriors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exterior
      @exterior = Exterior.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exterior_params
      params.require(:exterior).permit(:name, :new_vehicle_id, :color)
    end
end
