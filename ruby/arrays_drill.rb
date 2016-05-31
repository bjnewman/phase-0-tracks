#define method that adds three values to an array
def release_2(new, new2, new3)
  build_array = []
  build_array = build_array + [new, new2, new3] 
end
release_2("one", "two", "three")
p release_2

#Release 2, step 2
def add_array(arr, new)
  # build_array = ["one", "two", "three"]
  add_to_array = [arr]
  add_to_array = add_to_array << new
end

p add_array([1, 2], "three")
p add_array([2, 4, 6, 8], "four")
p add_array(["lions", "tigers", "and bears"], 5)


# Realease 1
#initial empty array
new_array = []
p new_array
#add five items to new array
new_array = new_array + [1,2,3,4,5]
p new_array
#delete item at index 2
new_array.delete_at(2)
p new_array
#insert new item at index 2
new_array.insert(2, "five")
p new_array
#remove first item of array without index
new_array.shift
p new_array
#ask array whether includes item
if new_array.include?(7)
  p "Congrats you found the number 4"
else
  p "Sorry, you couldn't even find a number."
end

#initialize new array with items

array_2 = [8, 9, 11, "green"]
array_3 = new_array + array_2
p array_3
