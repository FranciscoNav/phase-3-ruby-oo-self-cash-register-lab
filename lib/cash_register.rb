require 'pry'

class CashRegister
    attr_accessor :total
    attr_accessor :discount

    def initialize(total = 0, discount = 20)
        @total = total
        @discount = discount
    end

    def total
        @total
    end

    def add_item(title,price,quantity)
        previous_total = @total
        new_total = @total + (price * quantity)
        new_total
    end

    def apply_discount
        discount_float= @discount / 100
        discount_amount= @total * discount_float.to_f
        @total = @total - discount_amount
        @total
    end

end

