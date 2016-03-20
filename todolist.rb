class TodoList
    attr_reader :title, :items

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
    end

    def delete_item_at(index)
        @items.delete_at(index)
    end

    private

    def print_divider
        puts "-------------"
    end

    def print_item(index)
        item = @items[index]
        print "#{index + 1} - #{item.description}".ljust(20)
        puts "Completed: #{item.completed_status}"
    end
end

class Item
    attr_reader :description, :completed_status

    def initialize(item_description)
        @description = item_description
        @completed_status = false
    end
end
