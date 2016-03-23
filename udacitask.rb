require_relative 'todolist.rb'

# Creates a new todo list
todolist = TodoList.new("Julia's Stuff", 'Julia')

# Add four new items
tommorow = Time.now.to_date.next
todolist.add_item('Do laundry', tommorow)
todolist.add_item('Feed the cat', tommorow)
todolist.add_item('Buy cereal', tommorow)
todolist.add_item('Go dancing!', tommorow)

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

# Save in file
todolist.dump('todolist.dat')

# Load from file and print items
TodoList.load('todolist.dat').print_items
