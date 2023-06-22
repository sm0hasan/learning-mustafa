# Modules and Mixins #


# Exercise 1
# Create a module with a simple method and include it into a class.

module Simple
    def hello
        puts "Hello"
    end
end

class Greetings
    include Simple
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

greeting = Greetings.new("John")
greeting.hello

# Exercise 2
# Create a module as a namespace for multiple classes.

module World
    class Country
        attr_accessor :country_name
        def initialize(country_name)
            @country_name = country_name
        end
    end
    class Continent
        attr_accessor :continent_name
        def initialize(continent_name)
            @continent_name = continent_name
        end
    end
end

antartica = World::Continent.new('Antartica')
canada = World::Country.new('Canada')
puts antartica.continent_name, canada.country_name

# Exercise 3
# Create a module with a method and extend a class with it.

module Hello
    def simple_hello
        puts "Simple Hello0"
    end
end

class Greetings_101
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

Greetings_101.extend(Hello)
Greetings_101.simple_hello

# Exercise 4
# Use the Comparable module to compare objects of a custom class.
# See the following for more details on Comparable https://rubyapi.org/3.1/o/s?q=Comparable

class NameSize
    include Comparable
    attr_accessor :name
    def <=>(name2)
        name.length <=> name2.name.length
    end

    def initialize(name)
        @name=name
    end
end

name1 = NameSize.new("John")
name2 = NameSize.new("John")
name3 = NameSize.new("John")

puts name2.between?(name1, name2)

# Exercise 5
# Use the Enumerable module to add functionality to a custom class which has an instance member `values` which is an array.
# There should be a method `add_value` which adds a value to the array. Implement the `each` method which has the
# method spec `each(&block)` for Enumerable that applies `each` to your own array to provide iteration.
# See the following for more details: https://mauricio.github.io/2015/01/12/implementing-enumerable-in-ruby.html

class Holdin 
    include Enumerable
    attr_accessor :values
    def initialize()
        @values = []
    end

    def add_value(value)
        values << value
    end

    def each(&block)
        values.each(&block)
        self
    end
end

hold = Holdin.new
hold.add_value(1)
hold.add_value(2)
hold.add_value(3)
puts hold.values
hold.each {|n| puts n}



# Exercise 6
# Create a module with a method hello that displays "Hello from the module!". Then include the module into a class, override
# the hello method in the class, and call `super` to invoke the method from the module, then have the hello method in the
# class display "Hello from the class!".
module Disp
    def Hello
        puts "Hello from the module!"
    end
end

class Honor
    include Disp
    
    def initialize
    end
    def Hello
        super
        puts "Hello from the class!"
    end
end

honor = Honor.new
honor.Hello


# Exercise 7
# Create a module "Greetings" that has a method "greet" which prints out a greeting "Hello from #{self.class}!",
# then use this as a mixin for multiple classes and create examples of using greet from the classes.

module Greetings_2
    def greet
        puts "Hello from #{self.class}!"
    end
end

class Person_1
    include Greetings_2
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

class Person_2
    include Greetings_2
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

person_1 = Person_1.new("John")
person_2 = Person_2.new("John")
person_1.greet
person_2.greet