class Image < ActiveRecord::Base
  belongs_to :pipe
  mount_uploader :image, ImageUploader
end
