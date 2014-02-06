class CreditMailer < ActionMailer::Base
  default from: "creditapplications@nissanofomaha.com"
  default to: "jjones@nissanofomaha.com, mcabrera@nissanofomaha.com, mikeq@nissanofomaha.com"

  def credit(credit_application, time = Time.zone.now)
  	@sent_on = time.to_formatted_s(:long_ordinal)
  	@credit_application = credit_application

		mail(:subject => "New Credit Application")
  end
end
