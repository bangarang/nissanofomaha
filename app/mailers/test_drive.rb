class TestDrive < ActionMailer::Base
  default from: "testdrives@nissanofomaha.com"
  default to: "jmartin@nissanofomaha.com, mquattro@cox.net, alex@thenewblk.com"
  
  def joyride(test_drive, time = Time.zone.now)
  	@sent_on = time.to_formatted_s(:long_ordinal)
  	@first = test_drive.first
  	@last = test_drive.last
  	@method_phone = test_drive.method_phone
  	@method_email = test_drive.method_email
  	@morning = test_drive.morning
  	@afternoon = test_drive.afternoon
  	@evening = test_drive.evening
  	@comments = test_drive.comments
  	@phone = test_drive.phone
		@email = test_drive.email

		mail(:subject => "New Test Drive Request")
  end
end
