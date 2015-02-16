class Course < ActiveRecord::Base

# belongs_to :location

has_many :locations, through: :location_courses 
has_many :location_courses
end
