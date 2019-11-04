class Item
    attr_reader :name, :price, :dispenser
    attr_writer :name, :price, :dispenser
    
    def initialize(name, price, dispenser)
        @name = name
        @price = price
        @dispenser = dispenser
    end
end

class Cart
    attr_reader :items

    def initialize()
        @items = []
    end
    def add(item)
        @items << item
    end 
end

class Person
    attr_reader :name, :cart
    attr_writer :name, :cart
    def initialize(name)
        @name = name
        @cart = Cart.new()
    end
end

person = []

person << Person.new("João")

item = Item.new("Banana", "R$ 4,00", "same")
person[0].cart.add(item)

item = Item.new("Maçâ", "R$ 6,00", "same")
person[0].cart.add(item)

item = Item.new("Uva", "R$ 3,00", "same")
person[0].cart.add(item)

person[0].cart.items.each do |i|
    puts i.name
end