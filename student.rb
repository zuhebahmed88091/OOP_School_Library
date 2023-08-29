reqire_relative 'person'

class Student < Person
  def initialize(id, age:, classroom:, name: 'Unknown', parent_permission: true)
    super(id, name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
