require_relative 'person'
require_relative 'book'
require_relative 'rental'
require_relative 'teacher'
require_relative 'student'

class App
    def initialize
        @people = []
        @books = []
        @rentals = []
    end

    def list_of_books
        puts 'Here is the list of all books'
        @books.each do |book|
            puts "Title: \"#{book.title}\" , Author: #{book.author}"
        end
    end

    def list_of_people
        puts 'Here is the list of all people'
        @people.each do |person|
            puts people
        end
    end

    def create_student(age, name, parent_permission)
        student = Student.new(age, name, parent_permission)
        @people << student
    end

    def create_teacher(age, name, specialization)
        teacher = Teacher.new(age, name, specialization)
        @people << teacher
    end