class UsersController < ApplicationController
  def index
    users = User.all
    render json: users, include: :items
  end

  def show
    user = User.find(params[:id])
    render json: user, include: :items
  end
end
