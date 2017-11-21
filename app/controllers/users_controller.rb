class UsersController < ApplicationController
  def index
    @users = User.all
  end
  #追加
  def show
    @users = User.find(params[:id])
  end
end
