
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
  def initialize(name = "", age = 0)
    @name = name
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

#driver code
frodo = Hobbit.new("Frodo", 85)
frodo.try_hero_stuff
frodo.eat
frodo.eat_again
frodo.try_hero_stuff
frodo.brag(frodo.age)