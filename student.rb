require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(id, age,  name = 'Unknown', parent_permission: true)
    super(id, name, age, parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
