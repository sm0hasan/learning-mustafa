# Functions #

# Exercise 1
# Create a function that accepts two parameters and returns their sum.

def summer(param1, param2)
    sum = param1 + param2
    puts sum
end

summer(1, 2)

# Exercise 2
# Create a function that accepts an array as a parameter and returns the average of all elements.
def avgArray(array)
    puts array.inject {|sum, number| sum + number}/array.length
end

avgArray([1, 2, 3])

# Exercise 3
# Create a function that accepts a string as a parameter and returns the string in reverse order.

def reverseStr(str="")
    return str.reverse
end

puts reverseStr("Hello!")

# Exercise 4
# Create a function that accepts a number as a parameter and returns the factorial of the number, you can re-use your factorial code from previous exercises.

def factorial(numFac)
    sumFac = 1
    i = 1
    while i <= numFac
        sumFac = sumFac*i
        i += 1
    end
    return sumFac
end

puts factorial(4)

# Exercise 5
# Create a function that accepts a number as a parameter and returns true if it is even, otherwise false for odd.

def evenOdd(number)
    if number%2==0
        return true
    else
        return false
    end
end

puts evenOdd(10)

# Exercise 6
# Create a function that accepts a number as a parameter and returns true if the number is prime, otherwise returns false, you can re-use your prime number code from previous exercises.

def primeOrNot(num)
    isPrime = true
    for i in 2..(num/2)
        if num%i == 0
            return false
        end
    end
    return true
end

puts primeOrNot(2)
puts primeOrNot(3)
puts primeOrNot(6)

# Exercise 7
# Create a function that accepts a string as a parameter and returns the length of the string.

def lengthOfString(str="")
    return str.chars.count
end

puts lengthOfString("Optimus")

# Exercise 8
# Create a function that accepts a string as a parameter and returns the string with all vowels (e.g. a,e,i,o,u, A, E, I, O, U) removed.

def vowelRemover (string)
    return string.gsub(/[aeiouAEIOU]/, '')
end

puts vowelRemover("HelloO!")


# Exercise 9
# Create a function that accepts an array as a parameter and returns the array sorted in descending order.

def arrayDescend(arrayD)
    return arrayD.reverse
end

puts arrayDescend([1, 2, 3, 4])

# Exercise 10
# Create a function that accepts two parameters: a string and a letter, and returns the number of occurrences of the letter in the string.

def Occurence (string="", letter)
    return string.count(letter)
end

puts Occurence("HELLLoooOOOO", "L")