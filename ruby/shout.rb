module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :( "
  end
  def self.yell_happily(more_words)
    more_words + "!!!" + " Woohoo!"
  end
end 

Shout.yell_angrily("LOUD NOISES")
Shout.yell_happily("USA USA USA")