class RoutesController < ApplicationController

  def index
    @routes = Route.all
  end

  def create
    @gym = Gym.find(params[:gym_id])
    @route = @gym.routes.create(route_params)
    redirect_to gym_path(@gym)
  end

  private
    def route_params
      params.require(:route).permit(:title, :difficulty, :setter, :date_set)
    end
end
