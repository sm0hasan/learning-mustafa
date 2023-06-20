# Introduction to Ruby #

# Exercise 1
# Write a simple "Hello World" program and run it.

puts "Hello World"

# Exercise 2
# Write a program that prints your name.

name = "Mustafa"
puts name

# Exercise 3
# Write a program that prints the current date and time.

puts Time.now

# Exercise 4
# Write a program that prints the square of number 9.

puts Math.sqrt(9)

# Exercise 5
# Write a program that prints the type of a variable `x = 10`.

x = 10
puts x.class

# Exercise 6
# Write a program that prints all the constants defined by the Math module.

Math.constants.each do |constant|
    puts constant
end

# Exercise 7
# Write a program that checks if the number 16 is even.
number = 16
if number%2 == 0
    puts "Even!"
else
    puts "Not Even!"
end

# Exercise 8
# Write a program that prints the length of the string "Ruby".
str_ruby = "Ruby"
str_ruby.each_char do |char|
    puts "#{char}\n"
end


# Exercise 9
# Write a program that reverses the string "Hello World!".

str_hello = "Hello World!"
puts str_hello.reverse!

# Exercise 10
# Write a program that prints the current Ruby version.

puts "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"

