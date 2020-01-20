# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show; end

  def edit; end

  def update; end

  def create
    # @user = User.new( username: params[:username], email: params[:email], password: params[:password])
    @user = User.new(user_params)
    if @user.save
      # flash[:notice] = "User was successfully created"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
