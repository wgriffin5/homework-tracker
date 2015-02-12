class LocationsController < ApplicationController

def index
  @locations = Location.all
end

def new
  @location = Location.new
  @courses = Course.all
end

def create
  @location = Location.create location_params
  redirect_to locations_path
end

def show
  @location = Location.find params[:id]
  @courses = @location.courses 
end

def edit
  @location = Hospital.find params[:id]
  @courses = Course.all
end


def update
  @location = Location.find params[:id]
  @location.update_attributes location_params
  redirect_to locations_path
  @course = @location.courses
end

def destroy
  @location = Location.find params[:id]
  @location.delete
  redirect_to locations_path
end

private
def location_params
  params.require(:location).permit(
    :name,
    :address,
    location_ids: [],
    course_ids: [],


    )

end
end
