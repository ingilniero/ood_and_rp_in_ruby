require 'minitest/spec'
require 'minitest/autorun'

require './pull_up_method/person'

describe MalePerson do
  it 'has a full name' do
    MalePerson.new('John', 'Smith').full_name.must_equal 'John Smith'
  end
end

describe FemalePerson do
  it 'has a full name' do
    FemalePerson.new('Michelle', 'Smith').full_name.must_equal 'Michelle Smith'
  end
end
