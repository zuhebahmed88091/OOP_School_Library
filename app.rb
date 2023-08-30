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

    def create_book(title, author)
        book = Book.new(title, author)
        @books << book
    end

    def create_rental(date, book, person)
        rental = Rental.new(date, book, person)
        @rentals << rental
    end

    def books_for_rent
        @books.each_with_index do |book, index|
            puts "(#{index}) Title: \"#{book.title}\" , Author: #{book.author}"
        end
    end
    
    def all_person_who_can_rent
        @people.each_with_index do |person, index|
            if person.is_a?(Student)
                puts "(#{index}) [Student] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
            elsif person.is_a?(Teacher)
                puts "(#{index}) [Teacher] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
            else
                puts "(#{index}) [Unknown Person] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
            end
        end
    end