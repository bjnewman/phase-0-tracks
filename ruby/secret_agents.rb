# Encrypt method that advances each letter of string moved one forward

def encrypt(string)
  counter = 0
  while counter < (string.length)
    if string[counter] == " "
      counter +=1
    elsif string[counter] == "z"
      string[counter] = "a"
      counter +=1
    else
      string[counter] = string[counter].next
      counter +=1
    end
  end
  #p 
  string
end

def decrypt(string)
  counter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while counter < (string.length)
    if string[counter] == " "
      counter +=1
    elsif string[counter] == "a"
      string[counter] = "z"
      counter +=1
    else
      string[counter] = alphabet[(alphabet.index(string[counter]))-1]
      counter +=1
    end
  end
  #p 
  string
end

print "Would you like to encrypt or decrypt?"
operation = gets.chomp
if operation == "encrypt"
  print "Please enter your current password"
  password = gets.chomp
  p "Your secret password is #{encrypt(password)}"
elsif operation == "decrypt"
  print "Please enter the secret password"
  password = gets.chomp
  p "Your current password is #{decrypt(password)}"
else puts "Error, you failed!"
end


# decrypt(encrypt("swordfish")) this nested method call works because the methods return value of encrypted or decrypted string so the return value is almost always a string which is the correct input for each method.