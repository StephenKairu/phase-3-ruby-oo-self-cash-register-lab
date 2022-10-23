class CashRegister
    attr_accessor :discount, :total, :price, :items, :previous_item
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item title, price, quantity= 1
        self.total += price * quantity
        quantity.times { items << title}
        self.previous_item = price*quantity
    end

    def apply_discount
        if discount != 0
        self.total -= total * self.discount / 100
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.previous_item
    end
end
