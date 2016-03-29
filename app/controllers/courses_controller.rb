class CoursesController < ApplicationController

  def index
    # NICE!
    @gym = Gym.find(params[:gym_id])
    @courses = @gym.courses
  end

  def new
    @gym = Gym.find(params[:gym_id])
    @course = @gym.courses.new
  end

  def create
    @gym = Gym.find(params[:gym_id])
    # I would add @gym.courses.create! to make sure it will raise errors
    @course = @gym.courses.create(course_params)
    redirect_to gym_path(@gym)
  end

  def show
    @gym = Gym.find(params[:gym_id])
    @course = @gym.courses.find(params[:id])
  end

  def edit
    @gym = Gym.find(params[:gym_id])
    @course = @gym.courses.find(params[:id])
  end

  def update
    @gym = Gym.find(params[:gym_id])
    @course = @gym.courses.find(params[:id])
    @course.update(course_params)
    redirect_to gym_course_path
  end

  def destroy
    @gym = Gym.find(params[:gym_id])
    @course = @gym.courses.find(params[:id])
    @course.destroy
    redirect_to gym_path(@gym)
  end

  private
    def course_params
      params.require(:course).permit(:title, :difficulty, :setter, :set_date)
    end
end
