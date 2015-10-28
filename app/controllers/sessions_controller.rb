class SessionsController < ApplicationController
  def new
    # render the login scren
  end

  def create
    if valid_user?(session_params)
      # good, store the session_id in a cookie and paste it over to identify the user
    else
      response status: 401
    end
  end

  def destroy
  end

  private

    def session_params
      params.require(:session).permit(:email, :password)
    end

  def valid_user?(session_params)
    email = session_params[:email]
    password = session_params[:password]

    User.any?(email: email, password: password)
  end

end
