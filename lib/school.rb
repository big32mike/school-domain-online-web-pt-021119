require 'pry'
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def name(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do|key, values|
      sorted[key] ||= values.sort
    end
    sorted
  end

end
