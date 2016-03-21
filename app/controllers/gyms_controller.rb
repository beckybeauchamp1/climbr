class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.create!(gym_params)
    redirect_to gyms_path(@gym)
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def edit
    @gym = Gym.find(params[:id])
  end

  def update
    @gym = Gym.find(params[:id])
    @gym.update(gym_params)
    redirect_to gym_path(@gym)
  end

  def destroy
    @gym = Gym.find(params[:id])
    @gym.destroy
    redirect_to gyms_path(@gym)
  end


  private
    def gym_params
      params.require(:gym).permit(:name, :location)
    end

end
