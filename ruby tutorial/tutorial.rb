

#data type and variable assignment
name="aman"  #string
age=21        #integer
height = 6.2    #decimal
is_tall = true      #boolean

#variable concatenation 
puts "my name is #{name}"

# casting and conversion

puts 3.14.to_i #to integer
puts 3.to_f    # to float or decimal
puts 3.0.to_s   #to string

puts 100 + "50".to_i

#strings

greeting = "Hello"

puts greeting.length  #length of string
puts greeting[0]    #find a specific char at index 0
puts greeting.include?"llo" #check if a particualr string is present in greeting variable
puts greeting.include?"z"
puts greeting[2,3]  #start from index 2 and get 3 characters


#numbers

puts 2*3 #basic arithmetic +,-/,*
puts 2**3   #exponent
puts 10%3  #modulus
puts 1+2*3 #order of operations
puts 10/3.0 #integers and doubles 

num = 100
num+=1  # +=, -=, /=, *=
puts num

num = -36.7
puts num.abs() #print absolute value of num
puts num.round() #print round off value

# math class methods
puts Math.sqrt(144)
puts Math.log(0)

# user input
puts "enter your name:"
name = gets.chomp #get information from the console
puts "Hello #{name}, how are you"

puts "enter first number"
num1 = gets.chomp
puts "enter second number"
num2 = gets.chomp
puts num1.to_f + num2.to_f

# arrays 

lucky_numbers = [4,8,'fifteen',16,7]

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1]
puts lucky_numbers[2,3] #start from index 2 and grab 3 items
puts lucky_numbers[2..3] # get from index 2 through 3
puts lucky_numbers.length

#2d array
num_grid = [[1,2],[3,4]]
puts num_grid[0,1]

#array methods
friends = []
friends.push('joe')
friends.push('judy')
friends.push('ramsey')

print friends
puts friends

puts friends.reverse
puts friends.pop
puts friends.sort

puts friends.include?"joe"

# methods or functions

def add_numbers(num1=2,num2=1) # we can give default values to parameters
    return num1 + num2
end

sum = add_numbers(20,50)
puts sum

#if else statements

is_student = false
is_smart = false

if is_student and is_smart
    puts "you are a smart student"
elsif is_student and !is_smart
    puts "you are not a smart student"
else
    puts "you are nothing"
end

# >, <, >=, <=, !=, ==
if 1 <3
    puts "number comparision was true"
end

if "a" < "b"
    puts "string comaparision was true"
end

#switch statements

my_garde = "A"

case my_garde
when "A"
    puts "You pass"
when "F"
    puts "You failed"
else 
    puts "Invalid grade"
end

# dictionary in ruby

test_grades = {
    #key => value
    "Andy" => "B",
    :Stanley => "C",
    "Ryan" => "A",
    3 => 95.2
}

test_grades["Andy"]="A"
puts test_grades["Andy"] # gives the value of key andy
puts test_grades[:Stanley]
puts test_grades[3]

# while loops

index = 1
while index <= 5
    puts index
    index += 1
end

# for loops

for item in 0..9
    puts item
end

# exception catching

begin
    num = 10/0
rescue => exception #or specific exceptions
    puts "error"
else
    puts num
end

# object orientation

class Book 
    attr_accessor :title, :author
    def readBook()
        puts "reading #{self.title} by #{self.author}"
    end
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK rowling"

book1.readBook()
puts book1.title

# constructor

class Book 
    attr_accessor :title, :author

    def initialize(title,author) #constructor
        @title = title
        @author = author
    end

    def readBook()
        puts "reading #{self.title} by #{self.author}"
    end
end

book2 = Book.new("Harry Potter","JK rowling")
puts book2.title

# getters and setters

class Book
    attr_accessor :title,:author

    def initialize(title,author)
        self.title = title
        @author = author
    end
    def title=(title) #setter
        puts "Set"
        @title = title
    end
    def title   #getter
        puts "Get" 
        return @title
    end
end

book3 = Book.new("Harry Potter","Jk rowling")
puts book3.title

# inheritence

class Chef
    attr_accessor :name
    def  chefname()
        puts "the name of the chef is #{name}"
    end
end

class ChefCountry < Chef
    attr_accessor :country
    def chefCountry()
        puts "the name of the chef is #{name} and he is from #{country}"
    end
end



my_chef_country = ChefCountry.new()
my_chef_country.name = "Lorenzo"
my_chef_country.country = "Italy"
puts my_chef_country.chefCountry()
