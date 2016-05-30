# Get hamster name
print "Please enter hamster name:"
hamster_name = gets.chomp

#Get hamster volume level
print "Please enter #{hamster_name}'s volume level (1-10):"
hamster_volume = gets.chomp

#Get hamster fur color
print "Please enter #{hamster_name}'s fur color:"
hamster_color = gets.chomp

#Get adoption status
print "Is #{hamster_name} ready for adoption?"
hamster_adopt = gets.chomp

#Get hamster age and set to nil if blank
print "How old is #{hamster_name}?"
hamster_age = gets.chomp
if hamster_age == (" " || "")
  hamster_age = nil
end
