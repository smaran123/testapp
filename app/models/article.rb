class Article < ActiveRecord::Base
  has_many :comments, :dependent => :destroy 
  validates :reporter, :description, :presence => true 
end
