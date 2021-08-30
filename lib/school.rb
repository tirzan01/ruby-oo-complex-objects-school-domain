# code here!
class School

  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade].sort!
    end
  end

end