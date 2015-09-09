class UsersController < ApplicationController
  def index
    @users = User.order("first_name desc")
    render json: @users
  end

  def create
    @user = User.create(params[:users])
    render @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
end
