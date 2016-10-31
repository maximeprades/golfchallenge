class WelcomeController < ApplicationController

  def index
  	@golfs = Golf.all
  	@new_golf = Golf.new
  end

#  what we're doing above is the same thing as doing this (convention over configuration!!):
#  def index
#  	render 'welcome/index'
#  end

  def create
  	Golf.create!(params.require(:golf).permit(:name, :description, :url, :country))
  	redirect_to root_url
  end
end
