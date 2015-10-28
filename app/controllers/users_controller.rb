class UsersController < ApplicationController
  def new
    # nothing to do here, just render the default view
  end

  def create
    user = User.new(params)
    if user.save
      # login and redirect to home
    else
      render :new
    end
  end

  private

    def user_param
      params.require(:user).permit(:email, :password, :type)
    end
end
