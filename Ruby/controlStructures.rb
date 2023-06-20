# Control Structures #

# Exercise 1
# Write a Ruby script to output numbers from 1 to 10 using a loop.

for i in 1..10
    puts i
end

# Exercise 2
# Write a Ruby script to output even numbers from 1 to 10 using a loop and conditional statements.

for i in 1..10
    if i%2 == 0
        puts i        
    end
end

# Exercise 3
# Write a script that checks if a number is positive, negative or zero.

num = 10
if num > 0
    puts "Positive!"
elsif num < 0
    puts "Negative!"
elsif num == 0
    puts "Zero"
else 
    puts "NONE-ERR"
end

# Exercise 4
# Write a script that outputs the factorial of a number.
numFac = 4
sumFac = 1
i = 1
while i <= numFac
    sumFac = sumFac*i
    i += 1
end
puts sumFac

# Exercise 5
# Write a script that calculates the sum of all numbers from 1 to n where n is a positive integer.

n = 4
sum = 0
for i in 1..n
    sum += i
    puts i
end
puts sum

# Exercise 6
# Write a script that prints the Fibonacci series up to n (use n = 10 for simplicity).

n = 10
numTwo = [0, 1]

(2..n).each do |i|
    numTwo.push(numTwo[i-1]+numTwo[i-2])
end
puts numTwo[0..n]


# Exercise 7
# Write a script that checks whether a year is the start of the next decade, century, or millennium
# (e.g. if the year is 1900 it should print "Start of next century").
def startOf (year)
    if year%1000 == 0
        puts "Start of next millennium!"
    elsif year%100 == 0
        puts "Start of next century!"
    elsif year%10 == 0
        puts "Start of next decade!"
    else
        puts "Start of ...  I dont know?!"
    end
end

startOf(1900)
startOf(1990)
startOf(2000)
startOf(1999)

# Exercise 8
# Write a script that prints the sum of the digits of a number (as a string), for example "123" would be `1+2+3`.

def stringSum(strings)
    sum = 0
    for i in 1..(strings.chars.count)
        num = strings[i-1].to_i
        sum += num
    end
    puts sum
end

stringSum("1234")

# Exercise 9
# Write a script that checks if a string is a palindrome, for example "racecar" is a palindrome.

def palindrome(strPal)
    array = strPal.chars
    while array
        if array.count == 1 ||  array.count == 0
            return puts "Is a Palindrome"
        elsif array[0] == array.last
            array.delete_at(0)
            array.pop
        else
            return puts "Is not a palindrome"
        end
    end
end

palindrome("racecar")

# Exercise 10
# Write a script that prints the prime numbers up to n (use n = 100 for simplicity).

n = 100
primeNums = []
isPrime = true
(2..n).each do |num|

    for i in 2..(num/2)
        if num%i == 0
            isPrime = false
        end
    end
    
    if isPrime == true
        primeNums.push(num)
        
    end
    isPrime = true
end

puts primeNums