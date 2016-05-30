# Encrypt method that advances each letter of string moved one forward

def encrypt(string)
  counter = 0
  while counter < (string.length)
    string[counter] = string[counter].next
    counter +=1
  end
  puts string
end

def decrypt(string)
  counter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while counter < (string.length)
    string[counter] = alphabet[(alphabet.index(string[counter]))-1]
    counter +=1
  end
  puts string
end


encrypt("zed")