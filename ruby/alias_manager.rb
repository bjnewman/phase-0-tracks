#Change entry of "fname lname" to "lname fname"
spy = "Felicia Torres"

def nameswap(example)
  example_array = example.split(' ')
  example_encoded = example_array.rotate.join(' ')
end

#debug nameswap method
p nameswap(spy)

#split name into arrays
name_array = nameswap(spy).split('')

#by default increment each letter by one
next_name_array = name_array.map {|letter| letter.next!}

p next_name_array 

#if letter is w/in 1 of vowel should skip [d,D,h,H,n,N,t,T] -> [f,F,j,J,p,P,u,U]
#other edge case keep spaces
#[z,Z] -> [a,A]


#target is "Vussit Gimodoe"

