class AlbumsController < ApplicationController

before_filter :authorize, :except => [:show]

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(album_params)

		if @album.save
			redirect_to "/photos/new"
		else
			render :new
		end
	end

	def show
		@album = Album.find(params[:id])
	end


private

	def album_params
		params.require(:album).permit(:title, :id)
	end
end
