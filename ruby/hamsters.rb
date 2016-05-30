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
else 
  print "Please enter Y or N only"
end

#Get hamster age and set to nil if blank
print "How old is #{hamster_name} in months?"
hamster_age = gets.chomp
if hamster_age == (" " || "")
  hamster_age = nil
else 
  hamster_age.to_i!
end

#Return data to user for check
if hamster_adopt == true
  p "Thank you for helping keep track of our hamsters. Please verify that this hamster is called #{hamster_name}, is #{hamster_age} months old with #{hamster_color} fur, usually squeaks at a #{hamster_volume} out of 10 and is READY FOR ADOPTION!"
else
  p "Thank you for helping keep track of our hamsters. Please verify that this hamster is called #{hamster_name}, is #{hamster_age} months old with #{hamster_color} fur, usually squeaks at a #{hamster_volume} out of 10 and is NOT READY FOR ADOPTION YET."