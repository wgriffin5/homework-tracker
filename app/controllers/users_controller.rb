class UsersController < ApplicationController

def index
  @users = User.all

end


def new
  @user = User.new
  @courses = Course.all
end

def create
  @user = User.create user_params
  redirect_to users_path
end

def show
  @user = User.find params[:id]
end

def edit
  @user = User.find params[:id]
end

def update
  @user = User.find params[:id]
  redirect_to users_path(@user)
end

def destroy
  @user = User.find params[:id]
  @user.delete
  redirect_to users_path
end

def adminize
  if current_user.admin?
    @user = User.find(params[:id])
    @user.update_attribute :admin, true
  else
    ######
    redirect_to root_path


end 


###other admin stuff ???
private
def user_params
  params.require(:user).permit(
    :name,
    :password,
    :github_name,
    :admin_status,
    user_ids: [],
    assignment_ids: [],
    comment_ids: [],
    submission_ids: []
    )
end



end
