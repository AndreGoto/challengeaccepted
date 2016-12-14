# encoding: utf-8

class MessageUploader < CarrierWave::Uploader::Base
  # include CarrierWave::MiniMagick
  # include Cloudinary::CarrierWave

  # process eager: true  # Force version generation at upload time.
  # process convert: 'jpg'

  # version :normal do
  #   process resize_to_fill 600, 400, gravity = 'Center'
  # end
end
