class CashRegister
    attr_reader :discount
    attr_accessor :total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(title, price, quantity=1)
        @title = title
        @quantity = quantity
        @quantity.times do |i|
        @items.push(@title)
        end
        @price = price
        @total += @price * quantity
    end
    def apply_discount
        @total = @total - @total * (@discount / 100.0)
        return "After the discount, the total comes to $#{@total.round()}." if @discount > 0
        "There is no discount to apply."
    end
    def items()
        @items
    end
    def void_last_transaction
        @total -= @price * @quantity
    end
end