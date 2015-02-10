class CoursesController < ApplicationController

def index
  @courses = Course.all
end

def new 
  @course = Course.new

end

def create
  @course = Course.create course_params
  redirect_to courses_path
end

def show
  @course = Course.find params[:id]
end

def edit
  @course = Course.find params[:id]
end

def update
  @course = Course.find params[:id]
  @course.update_attributes course_params
  redirect_to course_path(@course)
end

def destroy
end

private
def course_params
  params.requires(:course).permit(
    :name,
    :description,
    location_ids: []
    )

end
