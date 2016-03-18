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

  private
    def gym_params
      params.require(:gym).permit(:name, :location)
    end

end
