# Object Oriented Programming #

# Exercise 1
# Create a class `Person` with attributes `name` and `age` and methods to get and set the attributes.

class Person
    def initialize(name, age=0)
        @name = name
        @age = age
    end

    def name=(name)
        @name = name
    end
    def name
        @name
    end

    def age=(age)
        @age = age
    end
    def age
        @age
    end
end

john = Person.new("John", 25)
puts john.name, john.age
john.name = "John Elton"
john.age = "26"
puts john.name, john.age

# Exercise 2
# Create a class `Rectangle` with attributes `length` and `width` and methods to calculate area and perimeter.

class Rectangle
    attr_accessor :length, :width
    def initialize(length, width)
        @length = length
        @width = width
    end

    def area
        length*width
    end
    def perimeter
        2 * (length + width)
    end
end

rect = Rectangle.new(3, 3)
puts rect.length, rect.width
puts rect.area, rect.perimeter

# Exercise 3
# Create a class `Circle` with attribute `radius` and methods to calculate area and circumference.

class Circle 
    attr_accessor :radius
    def initialize(radius)
        @radius = radius
    end

    def area
        Math::PI*radius**2
    end

    def circumference
        Math::PI*radius*2
    end
end

cirque = Circle.new(3)
puts cirque.area, cirque.circumference

# Exercise 4
# Create a class `Student` which inherits from class `Person` and also has the attribute `grades`, which contains an array of their grades.

# class Student < Person
#     attr_accessor :grades
#     def initialize(name, age, grades)
#         super(name, age)
#         @grades = grades
#     end
# end

# albert = Student.new("Albert", 19, [80, 85, 90, 95])
# puts albert.name, albert.age, albert.grades

# Exercise 5
# Create a class `Teacher` which inherits from class `Person` and also has attribute `subject`.

# class Teacher < Person
#     attr_accessor :subject
#     def initialize(name, age, subject)
#         super(name, age)
#         @subject = subject
#     end
# end

# elton = Teacher.new("Mr.Elton", 30, "Math")
# puts elton.name, elton.age, elton.subject

# Exercise 6
# Add a method to class `Student` to calculate the average grade.

class Student < Person
    attr_accessor :grades
    def initialize(name, age, grades)
        super(name, age)
        @grades = grades
    end

    def avgGrade
        grades.sum/grades.length
    end
end

albert = Student.new("Albert", 19, [80, 80, 90, 90])
puts albert.name, albert.age, albert.grades
puts albert.avgGrade

# Exercise 7
# Add a method to class `Teacher` to display a greeting to students for the subject.

class Teacher < Person
    attr_accessor :subject
    def initialize(name, age, subject)
        super(name, age)
        @subject = subject
    end

    def greeting
        "Good morning students, welcome to #{subject}, my name is #{name}, and I look forward to tecahing you all."
    end
end

elton = Teacher.new("Mr.Elton", 30, "Math")
puts elton.name, elton.age, elton.subject
puts elton.greeting


# Exercise 8
# Create a class `School` with attribute `students` (an array of `Student` objects) and a method to add students to the school.

# class School
#     attr_accessor :students
#     def initialize()
#         @students = []
#     end

#     def add_student(student)
#         students.push(student)
#     end
# end

# school = School.new
# school.add_student(albert)
# puts school.students.first.name


# Exercise 9
# Add a method to class `School` to calculate the average grade of all students.

class School
    attr_accessor :students
    def initialize()
        @students = []
    end

    def add_student(student)
        students.push(student)
    end

    def avgGrade
        arrOfGrades = students.map(&:grades).flatten.compact
        count = arrOfGrades.count
        arrOfGrades.sum/count
    end
end

school = School.new
school.add_student(albert)
puts school.students.first.name
puts school.avgGrade

# Exercise 10
# Create a class `Course` with attributes `name`, `teacher`, and `students` (an array of `Student` objects),
# and methods to add students and display the course info.

class Course
    attr_accessor :name, :teacher, :students
    def initialize(name, teacher)
        @name = name
        @teacher = teacher
        @students = []
    end

    def addStudents(student)
        students.push(student)
    end

    def dispCourseInfo
        "Name: #{name}, Teacher: #{teacher}, Students: #{students.size}"
    end
end

math = Course.new("James", "Mr.Doe")
puts math.addStudents("Daime"), math.addStudents("Alex")
puts math.dispCourseInfo