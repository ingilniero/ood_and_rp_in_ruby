class Post
  attr_reader :id, :title, :body, :created_at

  def initialize(id, title, body, created_at)
    @id = id
    @title = title
    @body = body
    @created_at = created_at
    @published = false
  end

  def self.find_and_publish(id)
    post = POSTS.find { |post| post.id == id }
    post.publish unless post.nil?
  end

  def publish
    @published = true
  end
end


POSTS = [
  Post.new(
    1,
    "Introduce Null Object Pattern",
    "Post body should be here",
    Time.new(2014,01,23)
  )
]
