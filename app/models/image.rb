class Image < ActiveRecord::Base
  belongs_to :prototype

  mount_uploader :main_image, AvatarUploader
  mount_uploader :sub_image_1, AvatarUploader
  mount_uploader :sub_image_2, AvatarUploader
  mount_uploader :sub_image_3, AvatarUploader
end
