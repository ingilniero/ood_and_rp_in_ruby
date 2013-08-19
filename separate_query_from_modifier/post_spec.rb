require 'minitest/spec'
require 'minitest/autorun'

require './separate_query_from_modifier/post'

describe Post do
  before :each do
    POSTS.each { |post| post.unpublish }
  end

  it 'is publishable' do
    post = Post.find(1)
    post.publish.must_equal true
  end

  it 'retrieves all unpublished posts count' do
    Post.unpublished.must_equal 4
  end
end
