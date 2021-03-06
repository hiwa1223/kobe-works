class PostsController < ApplicationController
  require 'payjp'

  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def apply
    @post = Post.includes(:user).find(params[:id])
  end

  def confirm
    
  end

  def purchase
    Payjp.api_key = "秘密鍵"
    Payjp::Charge.create(
      amount: 777, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end

  private
  def post_params
    params.require(:post).permit(:title, :lower_limit_price, :upper_limit_price, :content, :company_information, :about_product, :recruitment_background, :job_occupation, :skill, :expected_experience, :attraction_of_company, :attraction_of_job, :attraction_of_environment, :production_deadline, :application_deadline).merge(user_id: current_user.id)
  end

end