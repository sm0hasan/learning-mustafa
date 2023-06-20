# Strings and Regular Expressions #

# Exercise 1
# Write a program that concatenates two strings.
def stringConc(str1, str2)
    return str1+str2
end
print stringConc("One ", "for "), "All\n"

# Exercise 2
# Write a program that uses string interpolation to print out a variable as part of a sentence.
name = "John"
puts "My name is #{name}"

# Exercise 3
# Write a program that finds the length of a string.

str = "John"
puts str.length

# Exercise 4
# Write a program that replaces all occurrences of 'l' with 'z' in the string "Hello World".

str = "Hello World"
puts str.gsub("l", "z")

# Exercise 5
# Write a program that splits the string "Hello World" into an array of words.
str = "Hello World"
array = str.split(" ")
print "#{array}\n"

# Exercise 6
# Write a program that checks if the string "Hello World" contains the word "World".
str = "Hello World"
puts str.include?("World")

# Exercise 7
# Write a program that matches a string against a regular expression that checks for the presence of numbers in the string.
# See the following for examples: https://www.rubyguides.com/2015/06/ruby-regex/
def containsNumbersHuh(str)
    return str = /[0-9]/
end

puts containsNumbersHuh("Hello 1")
puts containsNumbersHuh("Hello !")


# Exercise 8
# Write a program that uses regular expressions to match a string that does not have any numbers.
def containsNumbersHuh(str)
    return str=~ /[0-9]/
end

puts containsNumbersHuh("Hello 1")
puts containsNumbersHuh("Hello !")


# Exercise 9
# Write a program that replaces all numbers in a string with 'X' using regular expressions.
def replaxe(str)
    return str.gsub(/[0-9]/, "X")
end

puts replaxe("He1lo 1")
puts replaxe("He1l0 !")


# Exercise 10
# Write a program that validates an email address using regular expressions.
# HINT: See the following to find a regular expression for emails: https://www.regexlib.com/Search.aspx?k=email&c=-1&m=-1&ps=20
def emailCheck(str)
    return str=~ /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/
end

puts emailCheck("sm8hasan@uwaterloo.ca")
puts emailCheck("He1l0 !")
