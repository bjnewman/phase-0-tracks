#Declare a Santa class with three instance methods

class Santa
#define initialize method that outputs initialization status
  def initialize
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
tim_allen = Santa.new
#milk and cookies method requires argument cookie type
tim_allen.eat_milk_and_cookies("Oatmeal Raisin Cookie")
#prints to console and returns nil
tim_allen.speak
