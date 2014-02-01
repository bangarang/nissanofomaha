class InteriorsController < ApplicationController
  before_action :set_interior, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  # GET /interiors
  # GET /interiors.json
  def index
    @interiors = Interior.all
  end

  # GET /interiors/1
  # GET /interiors/1.json
  def show
  end

  # GET /interiors/new
  def new
    @interior = Interior.new(:new_vehicle_id => params[:new_vehicle_id])
    @new = params[:new_vehicle_id]
  end

  # GET /interiors/1/edit
  def edit
  end

  # POST /interiors
  # POST /interiors.json
  def create
    @interior = Interior.new(interior_params)

    respond_to do |format|
      if @interior.save
        format.html { redirect_to @interior, notice: 'Interior was successfully created.' }
        format.json { render action: 'show', status: :created, location: @interior }
      else
        format.html { render action: 'new' }
        format.json { render json: @interior.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interiors/1
  # PATCH/PUT /interiors/1.json
  def update
    respond_to do |format|
      if @interior.update(interior_params)
        format.html { redirect_to @interior, notice: 'Interior was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interior.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interiors/1
  # DELETE /interiors/1.json
  def destroy
    @interior.destroy
    respond_to do |format|
      format.html { redirect_to interiors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interior
      @interior = Interior.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interior_params
      params.require(:interior).permit(:name, :new_vehicle_id, :color)
    end
end
