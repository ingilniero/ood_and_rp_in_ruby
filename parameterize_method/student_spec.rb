require 'minitest/spec'
require 'minitest/autorun'

require './parameterize_method/student'

describe Student do
  it 'has a first grade' do
    Student.new.first_term_grade.must_equal 10
  end

  it 'has a second grade' do
    Student.new.second_term_grade.must_equal 11
  end

  it 'has a third grade' do
    Student.new.third_term_grade.must_equal 12
  end
end
