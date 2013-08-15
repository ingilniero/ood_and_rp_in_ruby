class A
  attr_reader :x, :y, :z

  def initialize x, y, z
    @x = x
    @y = y
    @z = z
  end

  def some_function
    y / z
  end

  def special_method
    x + y * z ** some_function
  end
end

class B
  attr_reader :a

  def initialize a
    @a = a
  end

  def my_method
    a.special_method
  end
end
