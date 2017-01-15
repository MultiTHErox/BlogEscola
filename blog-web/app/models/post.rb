class Post < ActiveRecord::Base
  mount_uploader :image_post, PostUploader
end
