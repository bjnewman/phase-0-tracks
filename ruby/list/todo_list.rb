class TodoList
  #take array as argument and return on initialization
  
  def initialize(list)
    @list = list
  end
  #get items method returns current stored array
  def get_items
    p @list
  end
  #add item adds argument to array at end and returns updated array
  def add_item(task)
    @list << task
    p @list
  end
  #delete item method removes from array and returns updated array
  def delete_item(chore)
    p @list.delete_if {|task| task == chore}
  end
  #get_item(index) returns array value at index
  def get_item(x)
    p @list.at(x)
  end

end