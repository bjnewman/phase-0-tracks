#Change entry of "fname lname" to "lname fname"
puts "Please enter a new spy name to receive a codename, or enter 'quit' to end program."
spy = ""
until spy == "quit" 
  spy = gets.chomp
  if spy == "quit"
    break
  end
  
def nameswap(example)
  example_array = example.split(' ')
  example_encoded = example_array.rotate.join(' ')
end

#debug nameswap method
#p nameswap(spy)

#split name into arrays
name_array = nameswap(spy).chars
#p name_array

vowels = ["a", "e", "i", "o", "u" ]
near_vowels = ["d", "h", "n", "t"]

next_name_array = name_array.map do |letter|
#if letter is a space do nothing
if letter == " "
  letter = " "
#if lettter is vowel increment by one

elsif vowels.include?(letter.downcase)
  letter.tr('aeiouAEIOU', 'eiouaEIOUA')
  
#if letter immediately precedes vowel should skip [d,D,h,H,n,N,t,T] -> [f,F,j,J,p,P,v,V]

elsif near_vowels.include?(letter.downcase)
  letter = letter.tr('dDhHnNtT', 'fFjJpPvV')

#[z,Z] -> [b,B]
elsif letter.downcase == "z"
  letter.tr('zZ', 'bB')

#by default increment each letter by one
else 
  letter.next
end
end

#p next_name_array
codename = next_name_array.join
puts codename
end
#target is "Vussit Gimodoe"

