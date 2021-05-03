class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @musics = @user.musics.includes(:user)
  end
end
