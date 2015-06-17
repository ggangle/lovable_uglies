class Photo < ActiveRecord::Base

mount_uploader :image_url, DisneylandPhotoUploader

belongs_to :album

end
