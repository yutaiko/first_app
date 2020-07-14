class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end
end
