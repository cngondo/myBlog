class SessionsController < ApplicationController
  #  Create a session whenever user signs in 
  def create
    auth = request.env["omniauth.auth"]     
    user = User.find_by_provider_and_userid(auth["provider"], auth["userid"]) || User.create_with_omniauth(auth)     session[:user_id] = user.id     
    redirect_to root_url, :notice => "Signed in!"
  end
 
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
  