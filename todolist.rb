require 'date'

class TodoList
  attr_accessor :title

  def initialize(list_title)
    @title = list_title
    @items = []
  end

  def add_item(desc, due_date)
    item = Item.new(desc, due_date)
    @items.push(item)
  end

  def print_items
    print_divider
    puts @title
    print_divider
    @items.each_index { |index| print_item(index) }
    puts
  end

  def delete_item_at(index)
    @items.delete_at(index)
  end

  def change_item_status(index)
    @items[index].completed_status = !@items[index].completed_status
  end

  def dump(output_file)
    file = File.open(output_file, 'w')
    file.puts(Marshal.dump(self))
    file.close
  end

  def self.load(input_file)
    Marshal.load(File.read(input_file))
  end

  private

  def print_divider
    puts '-------------'
  end

  def print_item(index)
    @items[index].with_index_print(index + 1)
  end
end

class Item
  attr_reader :description
  attr_accessor :completed_status
  attr_reader :due_date

  def initialize(item_description, due_date)
    @description = item_description
    @completed_status = false
    @due_date = due_date
  end

  def completed?
    @completed_status
  end

  def with_index_print(index)
    print "#{index} - #{@description}".ljust(20)
    print "Completed: #{@completed_status}".ljust(20)
    puts "Due date: #{@due_date}"
  end
end
