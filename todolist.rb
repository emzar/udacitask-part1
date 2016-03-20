class TodoList
    attr_accessor :title

    def initialize(list_title)
        @title = list_title
        @items = Array.new
    end

    def add_item(new_item)
        item = Item.new(new_item)
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

    private

    def print_divider
        puts "-------------"
    end

    def print_item(index)
        @items[index].with_index_print(index + 1)
    end
end

class Item
    attr_reader :description
    attr_accessor :completed_status

    def initialize(item_description)
        @description = item_description
        @completed_status = false
    end

    def completed?
        return @completed_status
    end

    def with_index_print(index)
        print "#{index} - #{@description}".ljust(20)
        puts "Completed: #{@completed_status}"
    end
end
