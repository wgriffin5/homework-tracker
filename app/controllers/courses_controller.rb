class CoursesController < ApplicationController
  

  before_action :authenticate_user!
  # before_filter :configure_permitted_parameters, if :devise_controller?


  def index
    @courses = Course.all
  end

  def new 
    @course = Course.new
    @locations = Location.all

  end

  def create
    @course = Course.create course_params
    redirect_to courses_path
  end

  def show
    @course = Course.find params[:id]
    @locations = @course.locations
  end

  def edit
    @course = Course.find params[:id]
    @locations = Location.all
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes course_params
    redirect_to courses_path(@course)
  end

  def destroy
    @course = Course.find params[:id]
    @course.delete
    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(
      :name,
      :description,
      # course_ids: [],
      location_ids: []
    )
    
  end
end