module Assertions
  def assert(&block)
    raise ArgumentError unless block.call
  end
end

class SquareRootCalculator
  extend Assertions

  class << self
    def calculate(number)
      assert { number > 0 }
      Math.sqrt number
    end
  end
end
