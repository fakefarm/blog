class PostsController < ApplicationController
  def index
    @posts = Post.all
    @title_post = Post.last
    @tags = Post.tags
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    end
  end

private

  def post_params
    params.require(:post).permit(:title, :gist, :slug, :hero_image, :thumb_image, :tag, :body)
  end
end
