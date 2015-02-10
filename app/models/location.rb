class Location < ActiveRecord::Base

has_many :courses
has_many :courses, through: :location_courses
end
