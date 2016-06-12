#Declare a Santa class with three instance methods

class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
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
#add three attribute-changing methods
#define method to increment age by 1
  def celebrate_birthday
    @age += 1
  end
#define method to move reindeer to end of reindeer rankings
  def get_mad_at(reindeer_name)
    #steps - remove reindeer_name from @reindeer_ranking and push
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end
end
# #define setter method to allow gender to be writable outside class
#   def gender=(new_gender)
#     @gender = new_gender
#   end
# #include two getter methods for age and ethnicity attributes
#   def age
#     @age
#   end
#   def ethnicity
#     @ethnicity
#   end
#REFACTORED for RELEASE 3 getter and setters replaced with attr reader and attr accessor at lines 4-5


#add driver code to test class and method definition
# initialize method runs when .new called
# tim_allen = Santa.new
# #milk and cookies method requires argument cookie type
# tim_allen.eat_milk_and_cookies("Oatmeal Raisin Cookie")
# #prints to console and returns nil
# tim_allen.speak

#RELEASE 2 update driver code to test attribute-changing methods and getter/setters
# tim_allen = Santa.new("male", "white")
# p tim_allen.age
# p tim_allen.celebrate_birthday
# p tim_allen.get_mad_at("Vixen")
# p tim_allen.gender=("ask again later")
# p tim_allen.age
# p tim_allen.ethnicity

# #RELEASE 1 add diverse initializations as driver code
 santas = []
# #make this unnecessarily complicated but to practice nested data structures make a hash with the keys as the attributes and values as array of potential states
 sample_attributes = {
   sample_genders: ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "prefer not to say", "ask again later"],
   sample_ethnicities: ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A", "", "citizen of the world"]}

# # p sample_attributes[:sample_genders]  

# sample_attributes[:sample_genders].length.times do |i|
#   santas << Santa.new(
#     sample_attributes[:sample_genders[i]],
#     sample_attributes[:sample_ethnicities[-i]])
# end
# #p santas

# loop to create lots of randomly generated santas, .sample method for arrays selects random element of array, random age between 0 and 140, print attributes using getter methods
  99.times do |i|
  santas << timmy = Santa.new(
    sample_attributes[:sample_genders].sample,
    sample_attributes[:sample_ethnicities].sample)
    bdays = rand(140)
    until timmy.age == bdays
      timmy.celebrate_birthday
    end
    puts "Santa number #{i} hot off the presses:
    Age -           #{timmy.age}
    Gender -        #{timmy.gender}
    Ethnicity -     #{timmy.ethnicity}"
end

