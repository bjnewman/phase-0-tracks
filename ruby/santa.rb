#Declare a Santa class with three instance methods

class Santa
#define initialize method that outputs initialization status
#updated to include attributes in initialize method with two passed in as arguments and two set to default
#reindeer ranking is default order of preference  
  def initialize(gender = "", ethnicity = "")
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end
#define speak method to output greeting
  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end
#define eat milk and cookies method to accept input of cookie type and print thank you sentence
  def eat_milk_and_cookies(cookie_type = "")
    p "That was a good #{cookie_type}!"
  end
end

#add driver code to test class and method definition
# initialize method runs when .new called
# tim_allen = Santa.new
# #milk and cookies method requires argument cookie type
# tim_allen.eat_milk_and_cookies("Oatmeal Raisin Cookie")
# #prints to console and returns nil
# tim_allen.speak

#RELEASE 1 add diverse initializations as driver code
santas = []
#make this unnecessarily complicated but to practice nested data structures make a hash with the keys as the attributes and values as array of potential states
sample_attributes = {
  sample_genders: ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "prefer not to say", "ask again later"],
  sample_ethnicities: ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A", "", "citizen of the world"]}

# p sample_attributes[:sample_genders]  

sample_attributes[:sample_genders].length.times do |i|
  santas << Santa.new(
    sample_attributes[:sample_genders[i]],
    sample_attributes[:sample_ethnicities[-i]])
end
p santas



