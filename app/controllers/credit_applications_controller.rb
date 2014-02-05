class CreditApplicationsController < ApplicationController
  before_action :set_credit_application, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:new, :create]

  # GET /credit_applications
  # GET /credit_applications.json
  def index
    @credit_applications = CreditApplication.all
  end

  # GET /credit_applications/1
  # GET /credit_applications/1.json
  def show
  end

  # GET /credit_applications/new
  def new
    @credit_application = CreditApplication.new
  end

  # GET /credit_applications/1/edit
  def edit
  end

  # POST /credit_applications
  # POST /credit_applications.json
  def create
    @credit_application = CreditApplication.new(credit_application_params)

    CreditMailer.credit(@credit_application).deliver

    redirect_to root_url
    
    # respond_to do |format|
    #   if @credit_application.save
    #     CreditMailer.credit(@credit_application).deliver
    #     format.html { redirect_to root_url, notice: 'Credit application was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @credit_application }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @credit_application.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /credit_applications/1
  # PATCH/PUT /credit_applications/1.json
  def update
    respond_to do |format|
      if @credit_application.update(credit_application_params)
        format.html { redirect_to root_url, notice: 'Credit application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @credit_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_applications/1
  # DELETE /credit_applications/1.json
  def destroy
    @credit_application.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_application
      @credit_application = CreditApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_application_params
      params.require(:credit_application).permit(:primary_first_name, :primary_last_name, :primary_address, :primary_city, :primary_state, :primary_zip_code, :primary_contact_phone, :primary_email, :primary_time_at_residence, :primary_monthly_rent, :primary_date_of_birth, :primary_social_security_number, :primary_employer_name, :primary_employer_phone, :primary_occupation, :primary_time_on_job, :primary_monthly_income, :joint_first_name, :joint_last_name, :joint_address, :joint_city, :joint_state, :joint_zip_code, :joint_contact_phone, :joint_email, :joint_time_at_residence, :joint_monthly_rent, :joint_date_of_birth, :joint_social_security_number, :joint_employer_name, :joint_employer_phone, :joint_occupation, :joint_time_on_job, :joint_monthly_income, :interest_model_year, :interest_make, :interest_model, :interest_price, :interest_mileage, :interest_vin, :trade_model_year, :trade_make, :trade_model, :trade_price, :trade_mileage, :trade_vin)
    end
end
