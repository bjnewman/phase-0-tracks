# # Define puppy class and define fetch instance method.


# class Puppy

#   def initialize
#     puts "Initializing new puppy instance..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(integer)
#     "Woof!" * integer
#   end

#   def roll_over
#     "*rolls over*"
#   end

#   def dog_years(human_years)
#     7 * human_years
#   end

#   def catch_item(item)
#     "I caught the #{item}!"
#   end

# end

# # Insert driver code to test puppy class and instance methods.
# fido = Puppy.new
# p fido.fetch("bone")
# p fido.speak(3)
# p fido.roll_over
# p fido.dog_years(2)
# p fido.catch_item("ball")

#Release2 design and implement own class with initialize and two instance methods

class DeLorean

  def initialize
    p "Intializing flux capacitor..."
  end

  def time_travel(traveler)
    p "#{traveler} has left the present and have entered the mysterious universe of time travel!"
  end

  def power_charge
    "You need more that 1.21 gigawatts"
  end
  

end

# #driver code to test Delorean instance methods
# marty = DeLorean.new
# marty.time_travel("Marty")
# marty.power_charge(1)


time_travelers = []
i = 0
until i == 50
  doc_brown = DeLorean.new
  time_travelers[i] = doc_brown #stores new DeLorean in the time travelers array
  i += 1
end

#p time_travelers  #debug 

#iterates over array to call instance methods on each member of DeLorean class
time_travelers.each {|traveler| 
p traveler.time_travel(traveler)
p traveler.power_charge

}


