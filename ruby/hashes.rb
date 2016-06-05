p "Test"
#Interior Design Client Info
#Set default hash
client_bio = {
  name: "", 
  age: 1, 
  decor_theme: "", 
  childnum: 0, 
  new_baby: false, 
  new_property: false, 
  other_reason: "", 
  budget: 50000, 
  paid: 0
}
p client_bio
#Ask user for client name (convert to string) and add to hash as value for key name
puts "Please enter the client's name:"
  client_bio[:name] = gets.chomp
#Get client age (convert to integer) and add for key age
puts "Please enter the client's age:"
  client_bio[:age] = gets.to_i
#Get decor theme (convert to string) and add for key decor_theme
puts "Please enter the client's preferred decor theme:"
  client_bio[:name] = gets.chomp
#Get current number of kids (convert to int) and add for key childnum
puts "Please enter the number of children's rooms on the property:"
  client_bio[:childnum] = gets.to_i
#Ask if project includes nursery (convert to boolean) and add for new_baby
puts "Does this project include a nursery for a baby:"
  nursery = gets.chomp
  if nursery == "Yes"
  client_bio[:new_baby] = true
  end
#Ask if project includes purchase of new property (convert to bool) and add for key new_property
puts "Does this project include the purchase of a new property:"
  newprop = gets.chomp
  if newprop == "Yes"
  client_bio[:new_property] = true
  end
#Unless project includes nursery or new property ask for brief description (convert to string and add for key other_reason)
unless (client_bio[:new_baby] || client_bio[:new_property])
  puts "Please include a brief description of the reason for hiring our firm:"
  client_bio[:other_reason] = gets.chomp
end
#Get estimated project budget
puts "Please enter the estimated project budget:"
  client_bio[:budget] = gets.to_i
#Get total payment received
puts "Please enter total payment received:"
  client_bio[:budget] = gets.to_i
#Print client_bio to screen
p client_bio
#Allow user to update one value, ask for key they want to change, 
puts "You may now update one entry. Select the category of client data you would like to update (or enter none to skip):"
new_entry = gets.chomp
if  new_entry != "none"
  #convert input to string and match to key,
  if client_bio.has_key?(new_entry.to_sym)
    #prompt user for new value and update value
    puts "Please enter the updated client info for the #{new_entry}"
    new_value = gets.chomp
    client_bio[new_entry.to_sym] = new_value
  end
end

#print latest hash and exit
p client_bio
