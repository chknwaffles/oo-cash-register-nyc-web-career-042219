require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    binding.pry
    quantity.times {|
    self.items.times << title
  end
  
  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * (self.discount.to_f / 100))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
end
