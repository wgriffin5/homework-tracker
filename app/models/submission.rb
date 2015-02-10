class Submission < ActiveRecord::Base

belongs_to :assignment
belongs_to :user
has_many :comments, as: :commentable 
has_many :links
end
