class HomeController < ApplicationController
  def index
  	if params[:search]
  		@chus = Chu.search(params[:search]).order("created_at DESC")
		@users = User.all
  	else
  		@chus = Chu.limit(0)
	end
  end
  def show
  	@chus = Chu.all
  	@users = User.select("id", "name")
	@hash = Gmaps4rails.build_markers(@chus) do |chu, marker|
	  marker.lat chu.latitude
	  marker.lng chu.longitude
	end
  end
  def edit
  	@users = User.select("id", "name")
  end
end