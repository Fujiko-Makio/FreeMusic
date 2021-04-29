class MusicsController < ApplicationController
  def index
  end

  def create(music_params)
  end




  private 
  def music_params
    params.require(:music).permit(:musics_name, :description, :price, :genre, :instruments, :sound).merge(user_id: current_user.id)
  end
end
