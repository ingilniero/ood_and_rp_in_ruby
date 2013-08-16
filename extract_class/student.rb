class Student
  def initialize
    @terms = []
    %w(first second third).each do |which_term|
      @terms << Term.new(which_term)
    end
  end

  def set_all_grades_to grade
    %w(first second third).each do |which_term|
      @terms.find{ |term| term.name == which_term}.set_all_grades grade
    end
  end

  def first_term_grade
    @terms.find{ |term| term.name == 'first' }.grade
  end

  def second_term_grade
    @terms.find{ |term| term.name == 'second' }.grade
  end

  def third_term_grade
    @terms.find{ |term| term.name == 'third' }.grade
  end
end

class Term
  attr_reader :name, :assiduity, :test, :behavior

  def initialize name
    @name = name
    @assiduity = 0
    @test = 0
    @behavior = 0
  end

  def set_all_grades grade
    @assiduity = grade
    @test = grade
    @behavior = grade
  end

  def grade
    (assiduity + test + behavior) / 3
  end
end
