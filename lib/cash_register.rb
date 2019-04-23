class CashRegister
  attr_accessor :discount, :total
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
  end
  
  def apply_discount
    self.total -= (self.total * (self.discount % 1))
  end
end
