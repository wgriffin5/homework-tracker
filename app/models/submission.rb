class Submission < ActiveRecord::Base

  belongs_to :assignment
  # belongs_to :user
  has_many :comments, as: :commentable 
  has_many :links



# include Workflow
#   workflow do 
#     state :submitted do
#       event :review, :transitions_to => :reviewing
#     end

#     state :reviewing do
#       event :complete, :transitions_to => completed
#       event :incomplete, :transitions_to => incompleted
#     end

    # state :completed

    # state :incompleted do
    #   ### event: ???, :transitions_to => : ####
  # end  

end
