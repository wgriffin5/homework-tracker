class SubmissionsController < ApplicationController

def index 
  @submissions = Submission.all
end

def new
  @submission = Submission.new 
end 

def create
  @submission = Submission.create submission_params
  redirect_to submissions_path
end 

def show 
  @submission = Submission.find params[:id]
end

def edit
  @submission = Submission.find params[:id]
end

def update
  @submission = Submission.find params[:id]
  @submission.update_attributes submission_params
  redirect_to submissions_path
end

def destroy
  @submission = Submission.find params[:id]
  @submission.delete
  redirect_to submissions_path
end 

private

def submission_params
  params.require(:submission).permit(
    :name,
    :description
    # assignment_ids: [],
    # user_ids: [],
    # link_ids: [],
    # comment_ids: []
    )
end
end





