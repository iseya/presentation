class HomeController < ApplicationController
  def index
  	@homes = Home.all
  end
 
  def show
  	@home = Home.find(params[:id])
  end

  def new
  end

  def create
    @home = Home.new(home_params)
    @home.save
    redirect_to @home
  end

  private
    def home_params
      params.require(:home).permit(:title, :text)
    end


end