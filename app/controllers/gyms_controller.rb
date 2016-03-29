class GymsController < ApplicationController
  before_action :set_gym, only: [:show, :edit, :update, :destroy]

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
    # In the case we are destroying a Gym, we would want to redirect to
    # redirect_to gyms_path instead because trying to redirect to that gym would give you an error!
    # the gym no longer exists
    redirect_to gyms_path(@gym)
  end


  private
  # Nice job with these private method and instatiating strong parameters!
  def gym_params
    params.require(:gym).permit(:name, :location)
  end
  # you could also add another private method here:
  def set_gym
    @gym = Gym.find(params[:id])
  end
  # then at the top of this controller add the following:
  #   before_action :set_gym, only: [:show, :edit, :update, :destroy]
  # Then you could eliminate @gym = Gym.find(params[:id]) from show, edit, update, and destroy
  # It would call this method every time before, and you could make your code more DRY

end
