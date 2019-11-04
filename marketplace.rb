class Item
    def initialize(name, price, dispenser)
        @name = name
        @price = price
        @dispenser = dispenser
    end
    def getName()
        @name
    end
    def getPrice()
        @price
    end
    def setName=(name)
        @name = name
    end
    def setPrice=(price)
        @price = price
    end
end

class Cart
    def initialize()
        @itens = []
    end
    def add(item)
        @itens << item
    end 
    def getItens()
        @itens
    end
end

class Person
    def initialize(name)
        @name = name
        @cart = Cart.new()
    end
    def setName=(name)
        @name = name
    end
    def getName()
        @name
    end
    def setCart(cart)
        @cart = cart
    end
    def getCart()
        @cart
    end
end

person = []

person << Person.new("João")

item = Item.new("Banana", "R$ 4,00", "same")
person[0].getCart.add(item)

item = Item.new("Maçâ", "R$ 6,00", "same")
person[0].getCart.add(item)

item = Item.new("Uva", "R$ 3,00", "same")
person[0].getCart.add(item)

print person[0].getCart.getItens[0].getName

person[0].getCart.getItens.each do |i|
    puts person[0].getCart.getItens[i].getName
end

# new branch