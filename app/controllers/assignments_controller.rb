class AssignmentsController < ApplicationController

before_action :authenticate_user!

def index
  @assignments = Assignment.all  
end

def new
  @assignment = Assignment.new
end

def create
  @assignment = Assignment.create assignment_params
  redirect_to assignments_path
end

def show
  @assignment = Assignment.find params[:id]
  @comment = Comment.new
end

def edit
  @assignment = Assignment.find params[:id]
end

def update
  @assignment = Assignment.find params[:id]
  @assignment.update_attributes assignment_params
  redirect_to assignments_path(@assignment)
end

def comment
  @assignment = Assignmnet.find params[:id]
  

def destroy
  @assignment = Assignment.find params[:id]
  @assignment.delete
  redirect_to assignments_path
end

private

def assignment_params
  params.require(:assignment).permit(
    :name,
    :requirements,
    user_ids: [],
    comments: []
)
end
end
end