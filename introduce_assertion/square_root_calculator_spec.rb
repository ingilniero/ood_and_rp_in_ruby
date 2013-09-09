require 'minitest/autorun'
require 'minitest/spec'

require '../introduce_assertion/square_root_calculator'

describe SquareRootCalculator do
  it 'calculates a square root' do
    SquareRootCalculator.calculate(9).must_equal 3
  end

  it "doesn't calculate a negative number's square root" do
    proc { SquareRootCalculator.calculate(-9) }.must_raise ArgumentError
  end
end
