class HomeController < ApplicationController


# before_filter :configure_permitted_paramters, if: :devise_controller


  def index
    # #from plataformatec devise
    # if current_user.admin?
    #   @users = User.all?
    # else 
    #   @users = [current_user]
    # end
  end

end
