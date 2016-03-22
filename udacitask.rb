require_relative 'todolist.rb'

# Creates a new todo list
todolist = TodoList.new("Julia's Stuff")

# Add four new items
todolist.add_item('Do laundry')
todolist.add_item('Feed the cat')
todolist.add_item('Buy cereal')
todolist.add_item('Go dancing!')

# Print the list
todolist.print_items

# Delete the first item
todolist.delete_item_at(0)

# Print the list
todolist.print_items

# Delete the second item
todolist.delete_item_at(1)

# Print the list
todolist.print_items

# Update the completion status of the first item to complete
todolist.change_item_status(0)

# Print the list
todolist.print_items

# Update the title of the list
todolist.title = 'New cool TODO list'

# Print the list
todolist.print_items
