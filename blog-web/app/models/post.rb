class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  mount_uploader :image_post, PostUploader
end
