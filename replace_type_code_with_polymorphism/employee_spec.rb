require 'minitest/autorun'
require 'minitest/spec'

require '../replace_type_code_with_polymorphism/employee'

describe Employee do
  describe 'a regular one' do
    it 'has a salary' do
      Employee.build.salary.must_equal 500.0
    end
  end

  describe 'a boss' do
    it 'has a salary' do
      Employee.build(type: :boss).salary.must_equal 2000.0
    end
  end

  describe 'a manager' do
    it 'has a salary' do
      Employee.build(type: :manager).salary.must_equal 1300.0
    end
  end
end
