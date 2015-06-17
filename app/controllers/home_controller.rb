class HomeController < ApplicationController

	def home
		@albums = Album.all
	end

end