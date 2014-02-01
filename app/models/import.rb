class Import < ActiveRecord::Base
	mount_uploader :file, FileUploader
end