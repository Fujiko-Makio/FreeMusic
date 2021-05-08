class MusicsController < ApplicationController
  before_action :search_product
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :set_music, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]


  def index
    @musics = Music.all.order("created_at DESC")
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
  end

  def edit
  end

  def update
    if @music.update(music_params)
      redirect_to music_path(@music)
    else
      render :edit
    end
  end

  def destroy
    @music.destroy
    redirect_to root_path
  end

  def search
    @results = @p.result.includes(:user)
  end





  private 

  def music_params
    params.require(:music).permit(:musics_name, :description, :genre_id, :image_id, :sound).merge(user_id: current_user.id)
  end

  def search_product
    @p = Music.ransack(params[:q])
  end

  def move_to_index
    if  current_user != @music.user
      redirect_to root_path 
    end
  end

  def set_music
    @music = Music.find(params[:id])
  end

end
