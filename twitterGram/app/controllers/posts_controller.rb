class PostsController < ApplicationController
  before_action :set_sub, only: [:show, :update, :edit, :destroy]

  def index
  end

  def show
  end

  def edit
    if @post.update(post_params)
      redirect_to @path
    else
      render :edit
    end
  end

  def new
      @post = post.new
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  
  def set_post
    @post = post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name)
  end
end
