class UserController < ApplicationController

  
  def index
    @posts = current_user.posts
  end

  def show
  end

  def edit
  end

  def new

  end
end
