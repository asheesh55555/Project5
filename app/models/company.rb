class Company < ApplicationRecord
	has_many :places
	belongs_to :country
	belongs_to :state
	belongs_to :city
		mount_uploader :company_image, AbcUploader
        		mount_uploader :profile_image, XyzUploader
   

end
