class Person
  def initialize first_name, last_name, gender
    @first_name = first_name
    @last_name = last_name
    @gender = gender
  end

  def full_name
    first_name + " " + last_name
  end

  private

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end
end

class Screencaster < Person
  def initialize first_name, last_name, gender, tools
    super first_name, last_name, gender
    @tools = tools
  end
end

class Student < Person
  def initialize first_name, last_name, gender, preferred_language
    super first_name, last_name, gender
    @preferred_language = preferred_language
  end
end
