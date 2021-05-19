require 'pry'

class CashRegister
    attr_accessor :total
    attr_accessor :discount
    attr_accessor :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @items << title

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

    # def items
    #     binding.pry
    #     self.add_item
    #     items = []
    # end

    def void_last_transaction
        last_item = @items.length - 1


    end

end

