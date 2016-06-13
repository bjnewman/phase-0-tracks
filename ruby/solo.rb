
#Release 0 design a class with >= 3 attributes of >=2 data types that vary from instance
#define at least 3 methods 1 of which takes an argument

# create class of Hobbits, attributes (age is integer, name is string, hunger is boolean, courage is boolean)
# methods 
# eat 
# print "Mmm, breakfast" 
# eat_again 
# print"Mmm, second breakfast, now I'm full!" change hunger to false
# hero_stuff IF courage is true print "Hobbit fought the real battle in that tunnel alone, before Hobbit ever saw the vast danger that lay in wait.' - JRR Tolkien, The Hobbit"
#            ELSE print "It's a dangerous business, going out your front door. -JRR Tolkien, The Hobbit"
# initialize (name, age)
# brag (age)
# default hunger to true and courage to false

#Release 1 write the hobbit class and define methods
class Hobbit
  attr_reader :age, :name
  attr_accessor :hunger, :courage

#include attributes in initialize method with two passed in as arguments and two set to default
  def initialize(hobbit_name = "", age = 0)
    @name = hobbit_name
    @age = age
    @hunger = true
    @courage = false
    puts "Generating hobbit, say hi and welcome to #{@name}."
  end
#define eat method to print message
  def eat
    p "Mmm, breakfast"
  end
#define eat_again method to print message and set hunger to false
  def eat_again
    @hunger = false
    @courage = true
    p "MMM, second breakfast...now I'm full!"
  end

#define brag method
  def brag(age)
    p "Mind your manners, young one! I'm eleventy-#{age} years old!"
  end
#define hero_stuff method
  def try_hero_stuff
    if @courage == true
      p "#{@name} fought the real battle in that tunnel alone, before #{@name} ever saw the vast danger that lay in wait.' - adapted from JRR Tolkien, The Hobbit"
    else 
      p "It's a dangerous business, going out your front door. -JRR Tolkien, The Hobbit"
    end
  end
end

# #driver code
# frodo = Hobbit.new("Frodo", 85)
# frodo.try_hero_stuff
# frodo.eat
# frodo.eat_again
# frodo.try_hero_stuff
# frodo.brag(frodo.age)

#RELEASE 2 create UI, allow as many instances, prompt user for each attribute, convert to needed data type, store each instance in array
#when user is done, loop through array and print attributes of each instance
puts "WELCOME TO HOBBIT MAKER VERSION 1.0 - WOULD YOU LIKE TO CREATE A HOBBIT RIGHT NOW?!?!(y/n)"
hobbit_roster = []
until "n" == gets.chomp do
  puts "Thank you for adding to our hobbit population. Please enter your new hobbit's name:"
  hobbit_name = gets.chomp
  puts "Thank you for naming #{hobbit_name}. How old is that silly hobbit?"
  age = gets.chomp.to_i
  frodo = Hobbit.new(hobbit_name, age)
  puts "Do you think #{frodo.name} is a hungry hobbit today?(y/n)"
  if "n" != gets.chomp
    frodo.hunger = false
  else
    frodo.hunger = true
  end

  puts "Do you think #{frodo.name} is feeling brave today?(y/n)"
  if "n" != gets.chomp
    frodo.courage = true
  else
    frodo.courage = false
  end
  hobbit_roster << frodo
  puts "WELCOME TO HOBBIT MAKER VERSION 1.0 - WOULD YOU LIKE TO CREATE A HOBBIT RIGHT NOW?!?!(y/n)"
end   

# p hobbit_roster with attributes by iterating over hobbit roster and using getter methods
p "Would you like to print a list of the hobbits you created in this session with their attributes?(y/n)"
  if "n" != gets.chomp
    hobbit_roster.each do |hobbit|
      puts "Hobbit number #{hobbit_roster.index(hobbit) + 1} 
      Name -    #{hobbit.name}
      Age -     #{hobbit.age}
      Courage - #{hobbit.courage}
      Hunger -  #{hobbit.hunger}"
    end
  else
    p "Thank you have a wonderful day"
  end



