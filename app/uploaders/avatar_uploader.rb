# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_limit: [700, 700]

  process convert: 'jpg'

  version :thumb do
    process resize_to_limit: [300, 300]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
