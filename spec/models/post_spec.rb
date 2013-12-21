require 'spec_helper'

describe Post do
  it 'is valid with a title, slug, summary, image, thumb-nail image, body, and tag.' do
    post = Post.create(
      title: 'my first post',
      slug: 'my-first-post',
      summary: 'I am writing a new blog',
      image: 'www.image123.jpg',
      thumb_image: 'www.image123_tn.jpg',
      body: 'I could never figure out how to blog, so i built my own',
      tag: 'youreit')
    expect(post).to be_valid
  end
end


