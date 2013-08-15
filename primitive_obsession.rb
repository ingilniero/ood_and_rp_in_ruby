class Product
  attr_reader :name, :color, :price

  def initialize name, color, price
    @name = name
    @color = color
    @price = price
  end
end

["Shirt", "Pink", 10]
#
# vs
#

Product.new "Shirt", "Pink", 10
