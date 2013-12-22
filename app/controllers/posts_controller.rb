class PostsController < ApplicationController
  before_action :tags
  before_action :find_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all[0...-1].reverse
    @title_post = Post.last
  end

  def show
    @posts = Post.where(tag: @post.tag)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @post.update_attributes!(post_params)
      redirect_to root_path
    end
  end

  def tag
    @posts = Post.where(tag: params[:tag])
    @title_post = @posts.last
  end

private

  def tags
    @tags = Post.tags
  end

  def post_params
    params.require(:post).permit(:title, :gist, :slug, :hero_image, :thumb_image, :tag, :body)
  end

  def find_post
    @post = Post.find_by_slug(params[:id])
  end
end
