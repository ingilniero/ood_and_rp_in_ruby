require 'minitest/autorun'
require 'minitest/spec'

require '../replace_temp_with_query/cuboid'

describe Cuboid do
  it 'has a volume' do
    Cuboid.new(2,3,4).volume.must_equal 24
  end
end
