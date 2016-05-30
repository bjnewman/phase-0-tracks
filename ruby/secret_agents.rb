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
  p string
end

#Decrypt method

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
  p string
end


decrypt(encrypt("swordfish"))