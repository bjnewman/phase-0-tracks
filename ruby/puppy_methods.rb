# Define puppy class and define fetch instance method.


class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    "Woof!" * integer
  end

  def roll_over
    "*rolls over*"
  end

  def dog_years(human_years)
    7 * human_years
  end

  def catch_item(item)
    "I caught the #{item}!"
  end

end

# Insert driver code to test puppy class and instance methods.
fido = Puppy.new
p fido.fetch("bone")
p fido.speak(3)
p fido.roll_over
p fido.dog_years(2)
p fido.catch_item("ball")