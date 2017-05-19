class UsersController < ApplicationController

  def new
  end

  def create
      user = User.new(
                      name: params[:name],
                      email: params[:email],
                      password: params[:passord],
                      password_confirmation: params[:password_confirmation]
                      )
      if user.save
        session[:user_id] = user.user_id
        flash[:success] = 'Successfully created account, welcome to the club'
        redirect_to '/'
      else
        flash[:warning] = 'Invalid email or password bruh'
        redirect_to '/signup'
      end
  end 

 

end
