require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_item 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_item = 0
    end

    def add_item(title, price, quantity = 1)
        counter= 0
        if quantity > 1
            while quantity > counter
                counter += 1
                @items << title 
            end
        else
            @items << title 
        end
        @last_item = (price * quantity)
        previous_total = self.total
        @total = self.total + (price * quantity)
    end

    def apply_discount
        if @discount > 0
            discount_float= @discount.to_f / 100
            discount_amount= @total * discount_float
            @total = @total - discount_amount
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @last_item
    end

end

