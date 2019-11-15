class Item
    attr_reader :name, :price, :dispenser
    attr_writer :name, :price, :dispenser
    
    def initialize(name, price, dispenser)
        @name = name
        @price = price
        @dispenser = dispenser
    end
end

class Person
    attr_reader :name, :cart, :total
    attr_writer :name
    def initialize(name)
        @name = name
        @cart = []
        @total = 0
    end
    def add(item)
        @cart << item
        @total += item.price
    end
    def remove(item_id)
        @total -= @cart[item_id].price
        @cart.pop(item_id)
    end
        
end

person = Person.new("João")

item = Item.new("Banana", 2.34, "same")
person.add(item)

item = Item.new("Maçâ", 5.33, "same")
person.add(item)

item = Item.new("Uva", 3.20, "same")
person.add(item)

person.cart.each do |item|
    puts item.name
end

puts "Total: #{person.total}"

puts "Removendo maçã"
person.remove(1)

puts "Novo total: #{person.total}"

gets
