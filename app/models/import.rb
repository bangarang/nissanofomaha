class Import < ActiveRecord::Base
	mount_uploader :file, FileUploader

	after_create :set_name

	def set_name
		self.name = self.import_time.strftime('%Y_%m_%d')
	end
end