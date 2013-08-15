class Person
  attr_reader :first_name, :last_name, :gender

  def initialize first_name, last_name, gender
    @first_name = first_name
    @last_name = last_name
    @gender = gender
  end
end

class Animal
  def initialize name
    @name = name
  end
end

class Bug
  def initialize type
    @type = type
  end
end
