class Image < ApplicationRecord
	belongs_to :user
	mount_uploader :image_name, AvatarUploader
	mount_uploader :real_name, BtplUploader
end
