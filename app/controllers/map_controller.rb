class MapController < ApplicationController
  def index
    @shop=Shop.all
  end  
  def show
    @shop = Shop.find(params[:id])
    @posts = Post.all
    @post = Post.new
  end  
  def create
    if current_user
      @post= Post.new(post_params)
      @post.user_id = current_user.id
      @post.save
      @posts = Post.all
      @shop = Shop.find(post_params[:shop_id])
      respond_to do |format|
        format.js
      end 
    else
      redirect_to new_user_registration_path, notice: '投稿にはログインが必要です'
    end  
  end
   
  private 
  def post_params
    params.require(:post).permit(:title,:body,:shop_id)
  end  
  
end
