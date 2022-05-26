require_relative 'crud' #=> for relative directory

# $LOAD_PATH << "." #=> when it's not relative directory
# require "crud"

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password
    # attr_reader :username #only to read

    def initialize(firstname, lastname, email,, username, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    # def first_name=(name) #setter method
    #     @first_name = name
    # end

    # def first_name #getter method
    #     @first_name
    # end

    def to_s
        "First name: #{@first_name}, last name: #{@last_name}"
    end
end

computer = Student.new("first", "last", "asd@mail.com", "firstlast", "123")

# users = [
#         { username: "mashrur", password: "password1"},
#         { username: "jack", password: "password2"}
#     ]

# hashed_users = Crud.create_secure_users(users)

hashed_password = computer.create_hash_digest(computer.password)
