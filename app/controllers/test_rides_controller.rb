class TestRidesController < ApplicationController
  before_action :set_test_ride, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:new, :create]
  # GET /test_rides
  # GET /test_rides.json
  def index
    @test_rides = TestRide.all
  end

  # GET /test_rides/1
  # GET /test_rides/1.json
  def show
  end

  # GET /test_rides/new
  def new
    @test_ride = TestRide.new
  end

  # GET /test_rides/1/edit
  def edit
  end

  # POST /test_rides
  # POST /test_rides.json
  def create
    @test_ride = TestRide.new(test_ride_params)

    respond_to do |format|
      if @test_ride.save
        TestDrive.joyride(@test_ride).deliver
        format.html { redirect_to root_url, notice: 'Test ride was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_ride }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_rides/1
  # PATCH/PUT /test_rides/1.json
  def update
    respond_to do |format|
      if @test_ride.update(test_ride_params)
        format.html { redirect_to root_url, notice: 'Test ride was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_rides/1
  # DELETE /test_rides/1.json
  def destroy
    @test_ride.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_ride
      @test_ride = TestRide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_ride_params
      params.require(:test_ride).permit(:first, :last, :phone, :email, :method_phone, :method_email, :morning, :afternoon, :evening, :comments)
    end
end
