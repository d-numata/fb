class UsersController < ApplicationController
  def index
    @users = User.all
  end
  #追加
  def show
    user = User.find(params[:id])
  end
end
