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
end

class B
  attr_reader :a

  def initialize a
    @a = a
  end

  def my_method
    a.x + a.y * a.z ** a.some_function
  end
end
