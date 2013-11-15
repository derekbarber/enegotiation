class Participant < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
