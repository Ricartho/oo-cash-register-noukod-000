class CashRegister
  attr_accessor :total,:discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount / 100.0
    #@items = []
    
  end 
  
  def add_item(title,price,quantity = 0)
    @title = title
    @price = price
    self.total += @price if quantity == 0 
    self.total += @price * quantity unless quantity == 0 
  end
  
  def apply_discount
  
  end 
end
