module ApplicationHelper
  def markdown(text)
    options = [:hard_wrap]
    Redcarpet.new(text, *options).to_html.html_safe
  end

  def tag_count tag
    Post.where(tag: tag).count
  end
end
