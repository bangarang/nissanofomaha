class CreditMailer < ActionMailer::Base
  default from: "creditapplications@nissanofomaha.com"
  # default to: "jmartin@nissanofomaha.com"
  default to: "alex@thenewblk.com, matt@thenewblk.com"

  def credit(credit_application, time = Time.zone.now)
  	@sent_on = time.to_formatted_s(:long_ordinal)
  	@credit_application = credit_application

		mail(:subject => "New Credit Application")
  end
end
