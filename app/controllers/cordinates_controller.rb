class CordinatesController < ApplicationController
before_action :authenticate_user!
  def index
    @cordinates = Cordinate.all
  end

  def new
    @cordinate = Cordinate.new
    @clothes = Clothe.all
    @user_clothes = Clothe.where(user_id: current_user.id)

  end

  def new2
    @cordinate = Cordinate.new

  end

  def create
    @cordinate = Cordinate.new(cordinate_params)
    @cordinate.user_id = current_user.id
    if @cordinate.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
  end

  def edit
  end

  private
  def cordinate_params
    params.require(:cordinate).permit(:short_sleeve, :long_sleeve, :thick_long_sleeve, :coat, :movable, :favorite, :dirty, :formal, :user_id, ids:[])
  end
end
