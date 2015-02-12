class LocationCoursesController < ApplicationController

def index 
  @location_courses = LocationCourse.all
end 

def new
  ## ???
end 

def show
  @location_course = LocationCourse.find(params[:id])
  # next 2 lines for JT
  @course = Course.find(@location_course.course_id)
  @location = Location.find(@location_course.location_id)
end 

def edit
  @location_course = LocationCourse.find(params[:id])
end

def update
  @location_course = LocationCourse.find(params[:id])
  @location_course.update_attributes location_course_params
  redirect_to location_course_path(@location_course)
end

def destroy
end

private

def location_course_params
  params.require(:location_course).permit(
    #####???? huuummm




    )
end
end