class MusicsController < ApplicationController
  before_action :search_product
  before_action :authenticate_user!, only: [:new, :create, :edit]


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
    @music = Music.find(params[:id])
  end

  def edit
    @music = Music.find(params[:id])
  end

  def update
    @music = Music.find(params[:id])
    if @music.update(music_params)
      redirect_to music_path(@music)
    else
      render :edit
    end
  end

  def destroy
    @music = Music.find(params[:id])
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

end
