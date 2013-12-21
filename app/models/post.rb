class Post < ActiveRecord::Base
  def self.tags
    posts = Post.all
    tags = posts.map do |post|
      post.tag
    end
    tags.uniq
  end
end
