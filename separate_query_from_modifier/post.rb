class Post
  attr_reader :id, :title, :body, :created_at

  def initialize id, title, body, created_at
    @id         = id
    @title      = title
    @body       = body
    @created_at = created_at
    @published  = false
  end

  def self.find id
    POSTS.find { |post| post.id == id }
  end

  def publish
    @publised = true
    return POSTS.count { |post| !post.published? }
  end

  def unpublish
    @published = false
  end

  def published?
    @published
  end
end

  ### Sample data

POSTS = [
  Post.new(
    1,
    'Introduce Null Object Pattern',
    'Post body should be here',
    Time.new(2013, 01, 25)
  ),
  Post.new(
    2,
    'Introduce Assertion',
    'Post body should be here',
    Time.new(2012, 02, 26)
  ),
  Post.new(
    3,
    'Extract Method',
    'Post body should be here',
    Time.new(2014, 01, 06)
  ),
  Post.new(
    4,
    'Replace Type Code with Polymorphism',
    'Fost body should be here',
    Time.new(2015, 10, 12)
  )
]
