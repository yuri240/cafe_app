class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
    @comment = Comment.new
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :favorite_id,
      :area_id,
      :price_id,
      :impression,
      {images: []}
    ).merge(user_id: current_user.id)
  end
end

