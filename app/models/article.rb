class Article < ActiveRecord::Base
  has_many :comments, :dependent => :destroy 
  validates :reporter, :description, :presence => true 
    mount_uploader :video, VideoUploader # Tells rails to use this uploader for this model.
end
