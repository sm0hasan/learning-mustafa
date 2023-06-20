# Data Types and Variables #

# Exercise 1
# Create variables of each data type (number, string, symbol, array, hash) and print them out.
num = 10
str = "11"
sym = :loading
arr = [1, 2]
ha = {'name' => 'Mustafa', 'age' => '200'}
puts num, str, sym, arr, ha

# Exercise 2
# Create an array of 5 numbers and print the sum of all numbers.

arrayFive = [1, 2, 3, 4, 5] # Sum == 15
sum = 0
arrayFive.each_index do |index|
    sum += arrayFive[index]
end
puts sum

# Exercise 3
# Create a hash of 5 key-value pairs where keys are countries and values are capitals. Print the capital of France.

countryCapital = {'Canada' => 'Ottawa', 'Russia' => 'Moscow', 'France' => 'Paris', 'America' => 'Washington, D.C.', 'China' => 'Beijing'}

puts countryCapital['France']

# Exercise 4
# Write a program that converts the string "100" to an integer.

strHundred = "100"
puts strHundred.to_i.class


# Exercise 5
# Write a program that converts the float 50.0 to an integer.

float = 50.0
float = float.to_i
puts float.class

# Exercise 6
# Write a program that converts the symbol :ruby to a string.

symRuby = :Ruby
symRuby = symRuby.to_s
puts symRuby.class

# Exercise 7
# Write a program that adds an element to the end of an array.

arraySev = ["Orange", "Black", "Grey"]
arraySev.push("Blue")
puts arraySev

# Exercise 8
# Write a program that adds a key-value pair to a hash.

countryCapital['United Kingdom'] = 'London'
puts countryCapital

# Exercise 9
# Write a program that checks if an array includes the number 5.

checkWrong = [1, 2, 3, 4, 6]
checkRight = [1, 2, 3, 4, 5]
puts checkRight.include? 5
puts checkWrong.include? 5

# Exercise 10
# Write a program that defines a simple hash and check if the hash has the key "version".

application = {'name' => 'Ruby', 'version' => '3.1'}
puts application.has_key?('version')