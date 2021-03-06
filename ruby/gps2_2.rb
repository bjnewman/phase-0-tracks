# Method to create a list
# steps: 
  # separate the string of items and store each item individually in a data structure
# output: hash will print as a string

  # make a hash to save list and quantity
  # set default quantity

#grocery_list = {} #doesn't work from inside

# Method to print a list and make it look pretty
def pretty_print(our_list)
# input: grocery item list and quantity (hash)
# steps: print the list in a readable, pretty way... 
  our_list.each do |food, quantity|
    p "The next item on the list is #{quantity} #{food}"
  end
# output: "The next item on the list is: " (series of strings)  
end

def create_list (foods)
  grocery_list = {} #works from inside!
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  food_array = foods.split(" ")
  #doesn't work! grocery_list = food_array.to_h
  #iterate over the array and then create new key value pairs
  food_array.each do |food|
    grocery_list[food] = 0
  end
    # print the list to the console [can you use one of your other methods here?] pretty_print
  #p food_array
  #p grocery_list
  pretty_print(grocery_list)
end

# test method

our_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# def add_more_food (our_list, item, quantity)
#   # steps: define method, store names of items as keys 
#   #      and quants as values to our hash
#   our_list[item] = quantity
#   # output: hash full of items with new item
# end 
# not necessary equiv to inside method assign new key and value if don't exist


#add_more_food(our_list, "bacon", 6) dont use method the next line is simpler and faster
our_list["bacon"] = 6


# Method to remove an item from the list

# def remove_food(our_list, item)
#   # input: specific item in list
#   # steps: point it to the individual item and delete
#   our_list.delete(item)
#   # output: the hash without that item
# end

#remove_food(our_list, "carrots")   remove food unnecessary method does same as .delete built-in

# def update_quantity(our_list, food, new_quantity)
#   our_list[food] = new_quantity
#   "#{food}, #{new_quantity}"
# end 
# update quantity function unnecessary can just assign new value based on key

#update_quantity(our_list, "apples", 7)
#p pretty_print(our_list)
# Method to update the quantity of an item
# input: item to be updated and new quantity
# steps: point to the item and update the total quantity
# output: the key with it's new value via pretty_print


#Release 3  test methods 
#create new list
new_grocery = create_list("")

#add items to list
# add_more_food(new_grocery, "Lemonade", 2)
# add_more_food(new_grocery, "Tomotoes", 3)
# add_more_food(new_grocery, "Onions", 1)
# add_more_food(new_grocery, "Ice_Cream", 4)

new_grocery["Lemonade"] = 2
new_grocery["Tomatoes"] = 3
new_grocery["Onions"] = 1
new_grocery["Ice_Cream"] = 4
#remove lemonade
new_grocery.delete("Lemonade")

#update ice cream quantity
#update_quantity(new_grocery, "Ice_Cream", 1)
new_grocery["Ice_Cream"] = 1
#print new list nicely
pretty_print(new_grocery)




# RELEASE 5 - Reflect
# -I found that the provided template of input/steps/output was a helpful guide. Amanda and I collaborated fairly well on the pseudocoding section but we definitely struggled at the beginning to focus on each method and tried to move a little too quickly.
# -In this case given the relationship between the grocery list item and its quantity we felt a hash was the most appropriate structure, the best solution that i can think of to solve this with only arrays would need to nest the arrays and that might make the code less readable.
# -The object that a method returns is determined by the last line of the method and can be any data type.
# -We can pass any object into a method as an argument, this could be a variable, an integer, a string, or an entire structure of nested arrays and hashes
# -Passing information between methods requires making the output of one method a parameter for the next, as we did when the create list method returned the our_list hash and our following methods used that as a required parameter
# -I think that this helped me understand the criteria for figuring out whether creating a method is useful and also how learned more about how pseudocoding in particular can help with avoiding bugs in creating methods by focusing on input and output and chaining them together.


