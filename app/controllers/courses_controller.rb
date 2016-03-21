class CoursesController < ApplicationController

  def index
    @gym = Gym.find(params[:gym_id])
    @courses = @gym.courses
  end

  def new
    @gym = Gym.find(params[:gym_id])
    @course = @gym.courses.new
  end

  def create
    @gym = Gym.find(params[:gym_id])
    @course = @gym.courses.new(course_params)
    redirect_to gym_courses_path(@gym)
  end

  def show
    @course = @gym.courses.find(params[:id])
  end

  private
    def course_params
      params.require(:course).permit(:title, :difficulty, :setter, :set_date)
    end
end
