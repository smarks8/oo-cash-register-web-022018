class CashRegister
attr_accessor :discount, :total, :items, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += price*quantity
    quantity.times do
      items << item
    end
    @last_item = price * quantity
  end

  def apply_discount
      if discount != 0
      @total = @total * (100.0-@discount)/100.0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_item
  end


end
