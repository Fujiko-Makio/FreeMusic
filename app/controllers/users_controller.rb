class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @musics = current_user.musics
  end
end
