class UsersController < ApplicationController
  before_action :authenticate!, only: [:check_auth]

  def login
    @user = User.find_by!(email: params["email"])
    if @user.authenticate(params["password"])
      render json: { @user.as_json(only: [:email, :access_token]) },
             status: :ok
    else
      render json: { message: "Email or password could not be found." },
             status: :unauthorized
    end
  end

  def check_auth
    if current_user
      render json: { message: "Logged in as #{current_user.email}" },
             status: :ok
    else
      render json: { message: "Auth isn't working yet." },
             status: :unauthorized
    end
  end
end
