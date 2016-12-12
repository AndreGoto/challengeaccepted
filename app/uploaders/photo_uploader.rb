# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave
  process eager: true  # Force version generation at upload time.
  process convert: 'jpg'

  version :wide do
    process resize_to_fill 800, 200, gravity = 'Center'
  end

  version :thumb do
    process resize_to_fill 345, 200, gravity = 'Center'
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", width: 50, height: 50, crop: :thumb, gravity: :face
  end
end
