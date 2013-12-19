# encoding: utf-8

class MasterpieceImageUploader < CarrierWave::Uploader::Base
include CarrierWave::MiniMagick
 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  version :thumb do 
    process resize_to_fit: [64, 64]
  end
  version :preview do
    process resize_to_fit: [256, 256]
  end
  version :full do
    process resize_to_fit: [1024, 768]
  end

end
