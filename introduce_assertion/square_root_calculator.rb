class SquareRootCalculator
  class << self
    def calculate(number)
      Math.sqrt number if number > 0
    end
  end
end
