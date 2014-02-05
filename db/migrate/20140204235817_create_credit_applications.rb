class CreateCreditApplications < ActiveRecord::Migration
  def change
    create_table :credit_applications do |t|
      t.string :primary_first_name
      t.string :primary_last_name
      t.string :primary_address
      t.string :primary_city
      t.string :primary_state
      t.string :primary_zip_code
      t.string :primary_contact_phone
      t.string :primary_email
      t.string :primary_time_at_residence
      t.string :primary_monthly_rent
      t.string :primary_date_of_birth
      t.string :primary_social_security_number
      t.string :primary_employer_name
      t.string :primary_employer_phone
      t.string :primary_occupation
      t.string :primary_time_on_job
      t.string :primary_monthly_income
      t.string :joint_first_name
      t.string :joint_last_name
      t.string :joint_address
      t.string :joint_city
      t.string :joint_state
      t.string :joint_zip_code
      t.string :joint_contact_phone
      t.string :joint_email
      t.string :joint_time_at_residence
      t.string :joint_monthly_rent
      t.string :joint_date_of_birth
      t.string :joint_social_security_number
      t.string :joint_employer_name
      t.string :joint_employer_phone
      t.string :joint_occupation
      t.string :joint_time_on_job
      t.string :joint_monthly_income
      t.string :interest_model_year
      t.string :interest_make
      t.string :interest_model
      t.string :interest_price
      t.string :interest_mileage
      t.string :interest_vin
      t.string :trade_model_year
      t.string :trade_make
      t.string :trade_model
      t.string :trade_price
      t.string :trade_mileage
      t.string :trade_vin

      t.timestamps
    end
  end
end
