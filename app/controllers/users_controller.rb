class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end
  
  def show
    # can tell it's :id and not :user_id from looking at output of `rake routes` -> "/users/:id"
    @user = User.find(params[:id])
  end
end