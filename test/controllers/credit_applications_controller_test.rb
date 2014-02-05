require 'test_helper'

class CreditApplicationsControllerTest < ActionController::TestCase
  setup do
    @credit_application = credit_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit_application" do
    assert_difference('CreditApplication.count') do
      post :create, credit_application: { interest_make: @credit_application.interest_make, interest_mileage: @credit_application.interest_mileage, interest_model: @credit_application.interest_model, interest_model_year: @credit_application.interest_model_year, interest_price: @credit_application.interest_price, interest_vin: @credit_application.interest_vin, joint_address: @credit_application.joint_address, joint_city: @credit_application.joint_city, joint_contact_phone: @credit_application.joint_contact_phone, joint_date_of_birth: @credit_application.joint_date_of_birth, joint_email: @credit_application.joint_email, joint_employer_name: @credit_application.joint_employer_name, joint_employer_phone: @credit_application.joint_employer_phone, joint_first_name: @credit_application.joint_first_name, joint_last_name: @credit_application.joint_last_name, joint_monthly_income: @credit_application.joint_monthly_income, joint_monthly_rent: @credit_application.joint_monthly_rent, joint_occupation: @credit_application.joint_occupation, joint_social_security_number: @credit_application.joint_social_security_number, joint_state: @credit_application.joint_state, joint_time_at_residence: @credit_application.joint_time_at_residence, joint_time_on_job: @credit_application.joint_time_on_job, joint_zip_code: @credit_application.joint_zip_code, primary_address: @credit_application.primary_address, primary_city: @credit_application.primary_city, primary_contact_phone: @credit_application.primary_contact_phone, primary_date_of_birth: @credit_application.primary_date_of_birth, primary_email: @credit_application.primary_email, primary_employer_name: @credit_application.primary_employer_name, primary_employer_phone: @credit_application.primary_employer_phone, primary_first_name: @credit_application.primary_first_name, primary_last_name: @credit_application.primary_last_name, primary_monthly_income: @credit_application.primary_monthly_income, primary_monthly_rent: @credit_application.primary_monthly_rent, primary_occupation: @credit_application.primary_occupation, primary_social_security_number: @credit_application.primary_social_security_number, primary_state: @credit_application.primary_state, primary_time_at_residence: @credit_application.primary_time_at_residence, primary_time_on_job: @credit_application.primary_time_on_job, primary_zip_code: @credit_application.primary_zip_code, trade_make: @credit_application.trade_make, trade_mileage: @credit_application.trade_mileage, trade_model: @credit_application.trade_model, trade_model_year: @credit_application.trade_model_year, trade_price: @credit_application.trade_price, trade_vin: @credit_application.trade_vin }
    end

    assert_redirected_to credit_application_path(assigns(:credit_application))
  end

  test "should show credit_application" do
    get :show, id: @credit_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credit_application
    assert_response :success
  end

  test "should update credit_application" do
    patch :update, id: @credit_application, credit_application: { interest_make: @credit_application.interest_make, interest_mileage: @credit_application.interest_mileage, interest_model: @credit_application.interest_model, interest_model_year: @credit_application.interest_model_year, interest_price: @credit_application.interest_price, interest_vin: @credit_application.interest_vin, joint_address: @credit_application.joint_address, joint_city: @credit_application.joint_city, joint_contact_phone: @credit_application.joint_contact_phone, joint_date_of_birth: @credit_application.joint_date_of_birth, joint_email: @credit_application.joint_email, joint_employer_name: @credit_application.joint_employer_name, joint_employer_phone: @credit_application.joint_employer_phone, joint_first_name: @credit_application.joint_first_name, joint_last_name: @credit_application.joint_last_name, joint_monthly_income: @credit_application.joint_monthly_income, joint_monthly_rent: @credit_application.joint_monthly_rent, joint_occupation: @credit_application.joint_occupation, joint_social_security_number: @credit_application.joint_social_security_number, joint_state: @credit_application.joint_state, joint_time_at_residence: @credit_application.joint_time_at_residence, joint_time_on_job: @credit_application.joint_time_on_job, joint_zip_code: @credit_application.joint_zip_code, primary_address: @credit_application.primary_address, primary_city: @credit_application.primary_city, primary_contact_phone: @credit_application.primary_contact_phone, primary_date_of_birth: @credit_application.primary_date_of_birth, primary_email: @credit_application.primary_email, primary_employer_name: @credit_application.primary_employer_name, primary_employer_phone: @credit_application.primary_employer_phone, primary_first_name: @credit_application.primary_first_name, primary_last_name: @credit_application.primary_last_name, primary_monthly_income: @credit_application.primary_monthly_income, primary_monthly_rent: @credit_application.primary_monthly_rent, primary_occupation: @credit_application.primary_occupation, primary_social_security_number: @credit_application.primary_social_security_number, primary_state: @credit_application.primary_state, primary_time_at_residence: @credit_application.primary_time_at_residence, primary_time_on_job: @credit_application.primary_time_on_job, primary_zip_code: @credit_application.primary_zip_code, trade_make: @credit_application.trade_make, trade_mileage: @credit_application.trade_mileage, trade_model: @credit_application.trade_model, trade_model_year: @credit_application.trade_model_year, trade_price: @credit_application.trade_price, trade_vin: @credit_application.trade_vin }
    assert_redirected_to credit_application_path(assigns(:credit_application))
  end

  test "should destroy credit_application" do
    assert_difference('CreditApplication.count', -1) do
      delete :destroy, id: @credit_application
    end

    assert_redirected_to credit_applications_path
  end
end
