class PortfolioUploader < CarrierWave::Uploader::Base

  storage :file
  # storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # version :main do
  #   process resize_to_fit: [600, 345]
  # end

  # version :thumb do
  #   process resize_to_fit: [350, 200]
  # end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
