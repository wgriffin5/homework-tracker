class LocationsController < ApplicationController

def index
  @locations = Location.all
end

def new
  @location = Location.new
end

def create
  @location = Location.create hospital_params
  redirect_to locations_path
end

def show
  @location = Location.find params[:id]
end

def edit
  @location = Hospital.find params[:id]
end


def update
  @location = Location.find params[:id]
  redirect
end

def destroy
  @location = Location.find params[:id]
  @location.delete
  redirect_to locations_path
end

private
def hospital_params
  params.require(:location).permit(
    :name,
    :address,
    course_ids: [],

    )

end
end
