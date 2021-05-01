class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @music = Music.find(params[:id])
  end





  private 
  def music_params
    params.require(:music).permit(:musics_name, :description, :price, :genre_id, :image_id, :sound).merge(user_id: current_user.id)
  end
end
