require 'minitest/autorun'
require 'minitest/spec'

require '../introduce_null_object/post'

describe Post do
  it 'is publishable' do
    Post.find_and_publish(1).must_equal true
  end

  it 'does nothing if post is not found' do
    Post.find_and_publish(0)
  end
end
