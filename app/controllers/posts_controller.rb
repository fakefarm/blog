class PostsController < ApplicationController
  def index
    @posts = Post.all
    @title_post = Post.last
    @tags = Post.tags
  end
end
