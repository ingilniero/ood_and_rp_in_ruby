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
    raise NotImplementedError, "Must be implemented by subtypes."
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

  def present
    %Q{What's up, everyone? I'm #{full_name} and I'm happy
       to be int he commuty! I'm #{gender} by the way.
      }
  end
end
