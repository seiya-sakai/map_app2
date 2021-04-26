class ShopsController < ApplicationController
  before_action :authenticate_user!
  def new
    @shop=Shop.new
  end
  def create
    if current_user
      @shop= Shop.new(shop_params)
      @shop.user_id = current_user.id
      @shop.save
      redirect_to map_index_path
    else 
      　redirect_to new_user_session_path, alert: '投稿にはサインインが必要です'
    end      
  end
  private 
  def shop_params
    params.require(:shop).permit(:name,:adress,:lat,:lng,:phone_number,:shop_image_id,:comment)
  end
end
