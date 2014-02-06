class PartsMailer < ActionMailer::Base
  default from: "partsorder@nissanofomaha.com"
  default to: "smccune@nissanofomaha.com"

  def order(parts_order, time = Time.zone.now)
  	@sent_on = time.to_formatted_s(:long_ordinal)
  	@parts_order = parts_order

		mail(:subject => "New Credit Application")
  end
end
