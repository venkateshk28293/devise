class Post < ActiveRecord::Base
  has_one :user
  has_many :comments
  validates_presence_of :body, :title
  mount_uploader :image, ImageUploader
end
