class Person
  def initialize first_name, last_name, gender
    @first_name = first_name
    @last_name = last_name
    @gender = gender
  end

  def full_name
    first_name + " " + last_name
  end

  def present
    %Q{Hello, my name is #{full_name}, My gender is #{gender}.}
  end

  private

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def gender
    @gender
  end
end

class Screencaster < Person
  def initialize first_name, last_name, gender, tools
    super first_name, last_name, gender
    @tools = tools
  end

  def present
    %Q{Welcome to the class! My name is #{full_name} and I'm your tutor.}
  end
end

class Student < Person
  def initialize first_name, last_name, gender, preferred_language
    super first_name, last_name, gender
    @preferred_language = preferred_language
  end
end
