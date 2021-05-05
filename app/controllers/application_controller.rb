class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search_product, only: [:index, :search]


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :birthday, :first_name, :last_name, :first_name_kana, :last_name_kana])
  end
  def search_product
    @p = Product.ransack(params[:q])  # 検索オブジェクトを生成
  end
end
