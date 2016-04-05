class SignupsController < ApplicationController
  def create
    render json: { message: "Good job. Stuff is happenin." }
  end
end
