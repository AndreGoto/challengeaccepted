# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave
  process eager: true  # Force version generation at upload time.
  process convert: 'jpg'
  process resize_to_fill 800, 200, gravity = 'Center'

  version :thumb do
    process resize_to_fill 200, 200, gravity = 'Center'
  end

  # version :bright_face do
  #   cloudinary_transformation effect: "brightness:30", radius: 20,
  #     width: 150, height: 150, crop: :thumb, gravity: :face
  # end

  # def resize_to_fill_standard
  #   manipulate! do |img|
  #     img.colorspace("Gray")
  #     img.brightness_contrast("-30x0")
  #     img = yield(img) if block_given?
  #     img
  #   end
  # end

end
