#Multiple employee handling

puts "How many employees will be processed during this session?"
employee_num = gets.chomp
employee_num = employee_num.to_i

counter = 0
until  counter >= employee_num do

#Questions to gather new employee data

puts "What is your name?"
werename = gets.chomp
#logic to detect specific aliases
if werename == "Drake Cula"
  name_check = true
elsif werename == "Tu Fang"
  name_check = true
else 
  name_check = false
end

puts "How old are you?"
age = gets.chomp
age = age.to_i

puts "What year were you born?"
birthyear = gets.chomp
birthyear = birthyear.to_i

#age check
if age == (Time.new.year - birthyear)
  age_check = true
else
  age_check = false
end

puts "Do you like garlic bread?"
garlic = gets.chomp
if garlic == "Yes"
  garlic_check = true
else
  garlic_check = false
end

puts "Would you like to enroll in health insurance?"
insurance = gets.chomp
if insurance == "Yes"
  insurance_check = true
else
  insurance_check = false
end
#detection logic
detect_vamp = ""
if age_check && (garlic_check || insurance_check)
    detect_vamp = "Probably not a vampire"
elsif !age_check && (!garlic_check || !insurance_check)
    detect_vamp = "Probably a vampire"
elsif !(age_check || insurance_check || garlic_check)
    detect_vamp = "Almost certainly a vampire"
elsif name_check == true
      detect_vamp = "Definitely a vampire"
else detect_vamp = "Results inconclusive"
end


puts "Please enter your allergies one at a time, when you are finished please type done"
allergy = ""
until allergy == "sunshine"
    allergy = gets.chomp
    if allergy == "sunshine"
      detect_vamp = "Probably a vampire"
    end
    if allergy == "done"
     break
  end
end

puts "Your vampire detection status is #{detect_vamp}, congratualtions!"
counter +=1
end

