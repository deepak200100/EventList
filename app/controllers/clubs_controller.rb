class ClubsController < ApplicationController
  
  def index
  	@clubs = Club.all
  end

  def show
  end

  def new
  	@club = Club.new
  end

  def create
  	@club = Club.new(club_params)
  	if @club.save 
  		flash[:notice] = "Club Successfully added"
	else
		flash[:notice] = "Unable to add club"  
	end
	redirect_to action: 'index'
  end

  private
  def club_params
    params.require(:club).permit(:display_name, :address, :phone_number, :display_pic, :city_id)
  end

end
