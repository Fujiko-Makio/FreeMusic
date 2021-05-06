class ProductsController < ApplicationController

  before_action :search_product, only: [:index, :search]

  def index
    @products = Product.all
  end

  def search
    binding.pry
    @results = @p.result.includes(:music)
  end

  private
  def search_product
    @p = Music.ransack(params[:q])
  end
end
