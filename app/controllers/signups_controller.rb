class SignupsController < ApplicationController
  def create
    @user = User.new(first_name: params["first"],
                     last_name: params["last"],
                     email: params["email"],
                     password: params["password"])
    @user.ensure_auth_token
    if @user.save
      render json: { user: @user.as_json(only: [:first_name, :last_name, :email, :auth_token ]) },
             status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
