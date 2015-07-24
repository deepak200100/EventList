class HomeController < ApplicationController
  
  before_filter :search_clubs,:only => [:search]
  def index
  end

  def search
  	redirect_to(:back)
  end

  private
  def search_clubs
  	@clubs = Club.where(:city_id => params[:city_id]).all
  end

end
