# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :( "
#   end
#   def self.yell_happily(more_words)
#     more_words + "!!!" + " Woohoo!"
#   end
# end 

# Shout.yell_angrily("LOUD NOISES")
# Shout.yell_happily("USA USA USA")

#commented out old code for Release 3, convert to mixin
#write two classes and include shout in classes
#add driver code to test module with instances of each class

module Shout
  def yell_angrily(words)
    words + "!!!" + " :( "
  end
  def yell_happily(more_words)
    more_words + "!!!" + " Woohoo!"
  end
end 

class Angry_Driver
  include Shout
end

class Parrot
  include Shout
end

#driver code to create instances of Angry_Driver and Parrot and test shout methods
daniel = Angry_Driver.new
p daniel.yell_angrily("Hey you cut met off")
p daniel.yell_happily("What a beautiful day for a drive, you jerks")

polly = Parrot.new
p polly.yell_angrily("I'm tired of all these darn crackers!")
p polly.yell_happily("YES MORE CRACKERS")