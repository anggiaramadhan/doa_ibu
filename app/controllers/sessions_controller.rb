class SessionsController < ApplicationController
  # skip_before_action :user_authenticated, only: [:create]

  def create
    user = User.find_by(email: login_params[:email])
    if user && User.authenticate_by(email: login_params[:email], password: login_params[:password])
      start_sessions user
      redirect_to :workspaces
    else
      flash.now[:alert] = 'Something wrong with email or password'
      render 'homepage/new'
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
