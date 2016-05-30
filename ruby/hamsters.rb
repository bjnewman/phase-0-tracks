# Get hamster name
print "Please enter hamster name:"
hamster_name = gets.chomp

#Get hamster volume level
print "Please enter #{hamster_name}'s volume level (1-10):"
hamster_volume = gets.chomp
hamster_volume.to_i!

#Get hamster fur color
print "Please enter #{hamster_name}'s fur color:"
hamster_color = gets.chomp

#Get adoption status
print "Is #{hamster_name} ready for adoption(Y/N)?"
hamster_adopt = gets.chomp
if hamster_adopt.include?"Y"
  hamster_adopt = true
elsif hamster_adopt.include?"N"
  hamster_adopt = false
else print "Please enter Y or N only"


#Get hamster age and set to nil if blank
print "How old is #{hamster_name}?"
hamster_age = gets.chomp
hamster_age.to_i!
if hamster_age == (" " || "")
  hamster_age = nil
end
