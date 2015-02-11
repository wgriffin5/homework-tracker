class Course < ActiveRecord::Base

belongs_to :location

has_many :locations, through: :location_course 

end
