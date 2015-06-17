class PhotosController < ApplicationController

before_filter :authorize

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)

		if @photo.save
			redirect_to '/'
		else
			render :new
		end
	end

private

	def photo_params
		params.require(:photo).permit(:caption, :image_url, :album_id)
	end

end