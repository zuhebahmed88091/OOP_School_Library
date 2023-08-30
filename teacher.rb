require_relative 'person'

class Teacher < Person
  def initialize(age, name = 'Unknown', specialization)
    super(age, name)
    @id = Random.rand(1..1000)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_s
    "[Teacher] Name: #{@name}, ID: #{@id}, Age: #{@age}"
  end
end
