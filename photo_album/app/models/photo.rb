class Photo < ApplicationRecord
	mount_uploader :file_location, PhotoImageUploader
	validates_presence_of :title, :date, :file_location

end
