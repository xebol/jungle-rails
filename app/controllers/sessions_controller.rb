class SessionsController < ApplicationController

  def create
   return unless user = User.authenticate_with_credentials(params[:email], params[:password])

    if user
      # success logic, log them in
      session[:user_id] = user.id
      redirect_to '/'
    else
       # If user's login doesn't work, send them back to the login form.
       redirect_to '/login'
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
