== README

articles comments sending mail and flash message test


ruby 2.2.2p95
Rails 4.2.3

Video uploading using carrierwave

--------------------------------- 
Gem file
-----------
gem 'carrierwave', '~> 0.9'
gem 'rmagick', :require => false
gem "jquery-fileupload-rails"
-------------------------------
Article.rb
-----------
mount_uploader :video, VideoUploader 

rails g uploader video(cmd prompt)
---------------------------------

VideoUploader
----------

storage :file

def store_dir
"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
end

def extension_white_list
%w(mp4 wmv)
end
-----------------
AddVideoToArticle(migration file)
---------------- 
 add_column :articles, :video, :string
 --------------------------------------

 _form.html.erb
 --------------
  <%= f.label :video %>
    <%= f.file_field :video %>
    -----------------
    show.html
    -----------

       <td><%= video_tag @article.video_url ,:size => "320x240", :controls => true , :poster => "/assets/window.jpg" %></td> 

       -------------------

       add image in assets/image folder
