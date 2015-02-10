class Assignment < ActiveRecord::Base

belongs_to :user
has_many :users, through: :submission
has_many :comments, as: :commentable
end
