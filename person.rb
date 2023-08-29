class Person
    att_accessor :name, :age
    att_reader :id

    def initialize(id, name: 'Unknown', age, parent_permission: true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def can_use_services?
        of_age? || @parent_permission
    end

    private

    def of_age?
        @age >= 18
    end
end